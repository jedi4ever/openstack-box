include_recipe "mysql::server"

mysql_database node.nova.mysql.database do
  connection({ :host => "localhost",
               :username => "root",
               :password => node.mysql.server_root_password })
  action :create
end

execute "mysql-install-nova-privileges" do
  command "/usr/bin/mysql -u root -p#{node.mysql.server_root_password} <\
           /etc/mysql/nova-grants.sql"
  action :nothing
end

template "/etc/mysql/nova-grants.sql" do
  path "/etc/mysql/nova-grants.sql"
  source "grants.sql.erb"
  owner "root"
  group "root"
  mode "0600"
  variables( :user     => node.nova.mysql.user,
             :password => node.nova.mysql.password,
             :database => node.nova.mysql.database )
  notifies( :run,
            resources(:execute => "mysql-install-nova-privileges"),
            :immediately )
end

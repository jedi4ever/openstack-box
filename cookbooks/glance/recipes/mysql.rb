include_recipe "mysql::server"

mysql_connection = {
  :host => "localhost",
  :username => "root",
  :password => node.mysql.server_root_password
}

mysql_database node.glance.mysql.database do
  connection mysql_connection
  action :create
end

mysql_database_user node.glance.mysql.user do
  connection mysql_connection
  database_name node.glance.mysql.database
  password node.glance.mysql.password
  action [:create, :grant]
end

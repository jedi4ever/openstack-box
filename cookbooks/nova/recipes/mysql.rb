include_recipe "mysql::server"

mysql_connection = {
  :host => "localhost",
  :username => "root",
  :password => node.mysql.server_root_password
}

mysql_database node.nova.mysql.database do
  connection mysql_connection
  action :create
end

mysql_database_user node.nova.mysql.user do
  connection mysql_connection
  database_name node.nova.mysql.database
  password node.nova.mysql.password
  action [:create, :grant]
end

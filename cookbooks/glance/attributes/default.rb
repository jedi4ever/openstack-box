default.glance.mysql.user = "glancedbadmin"
set_unless.glance.mysql.password = "glancesecret"
default.glance.mysql.database = "glance"
set_unless.glance.mysql.host = "localhost"

default.glance.sql_connection = "mysql://#{node.glance.mysql.user}:" +
  "#{node.glance.mysql.password}@#{node.glance.mysql.host}/"  +
  "#{node.glance.mysql.database}"

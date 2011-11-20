include_recipe "rabbitmq"

service "rabbitmq-server" do
  action [:enable, :start]
end

rabbitmq_vhost "/vhost" do
  action :add
end

rabbitmq_user "nova" do
  password "secure_password"
  action :add
end

rabbitmq_user "nova" do
  vhost "/vhost"
  password "secure_password"
  permissions "\".*\" \".*\" \".*\""
  action :set_permissions
end

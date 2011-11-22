include_recipe "rabbitmq"

service "rabbitmq-server" do
  action [:enable, :start]
  only_if "/etc/init.d/rabbitmq-server status | grep no_nodes_running"
end

rabbitmq_vhost node.nova.rabbitmq.vhost do
  action :add
end

rabbitmq_user node.nova.rabbitmq.user do
  password node.nova.rabbitmq.password
  action :add
end

rabbitmq_user node.nova.rabbitmq.user do
  vhost node.nova.rabbitmq.vhost
  password node.nova.rabbitmq.password
  permissions "\".*\" \".*\" \".*\""
  action :set_permissions
end

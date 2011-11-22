default.nova.mysql.user = "novadbadmin"
set_unless.nova.mysql.password = "novasecret"
default.nova.mysql.database = "nova"
set_unless.nova.mysql.host = "localhost"

set_unless.nova.rabbitmq.password = "secure_password"
default.nova.rabbitmq.user = "nova"
default.nova.rabbitmq.vhost = "/nova"

name "nova_controller"
run_list( "role[node]",
          "role[glance]",
          "recipe[nova::mysql]",
          "recipe[nova::rabbitmq]",
          "recipe[nova::api]",
          "recipe[nova::network]",
          "recipe[nova::objectstore]",
          "recipe[nova::scheduler]",
          "recipe[nova::volume]" )

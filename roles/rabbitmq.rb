name "rabbitmq"
run_list( "recipe[node]",
          "recipe[rabbitmq]" )

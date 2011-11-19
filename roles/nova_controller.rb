name "nova_controller"
run_list( "role[node]",
          "role[glance]",
          "recipe[nova::api]",
          "recipe[nova::network]",
          "recipe[nova::objectstore]",
          "recipe[nova::scheduler]" )

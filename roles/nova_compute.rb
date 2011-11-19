name "nova_compute"
run_list( "role[node]",
          "recipe[nova::compute]" )

name "glance"
run_list( "role[node]",
          "recipe[glance]" )

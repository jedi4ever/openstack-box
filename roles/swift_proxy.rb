name "swift_proxy"
run_list( "role[node]",
          "recipe[swift::proxy]" )

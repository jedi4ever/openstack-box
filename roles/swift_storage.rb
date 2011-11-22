name "swift_storage"
run_list( "role[node]",
          "recipe[swift::object]",
          "recipe[swift::container]",
          "recipe[swift::account]" )

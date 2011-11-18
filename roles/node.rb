name "node"
run_list( "recipe[apt]",
          "recipe[build-essential]",
          "recipe[git]",
          "recipe[ntp]",
          "recipe[rsyslog]" )

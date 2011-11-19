box "nova", :memory => 4096 do |chef|
  chef.add_role "nova_controller"
  chef.add_role "nova_compute"
end

box "nova-controller", :memory => 2048 do |chef|
  chef.add_role "nova_controller"
end

box "nova-compute1", :memory => 2048 do |chef|
  chef.add_role "nova_compute"
end

box "nova-compute2", :memory => 2048 do |chef|
  chef.add_role "nova_compute"
end

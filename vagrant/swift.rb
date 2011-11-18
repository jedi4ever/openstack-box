box "swift", :ip => 20, :memory => 1024 do |chef|
  chef.add_role "swift_proxy"
  chef.add_role "swift_storage"
end

box "swift-proxy", :ip => 30 do |chef|
  chef.add_role "swift_proxy"
end

(1..4).each do |n|
  box "swift-storage#{n}", :ip => 30+n do |chef|
    chef.add_role "swift_storage"
  end
end

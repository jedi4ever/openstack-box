package "python-software-properties"

execute "apt-add-repository ppa:swift-core/trunk && apt-get update" do
  creates "/etc/apt/sources.list.d/swift-core-trunk-#{node.lsb.codename}.list"
end

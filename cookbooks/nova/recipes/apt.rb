package "python-software-properties"

execute "apt-add-repository ppa:nova-core/trunk && apt-get update" do
  creates "/etc/apt/sources.list.d/nova-core-trunk-#{node.lsb.codename}.list"
end

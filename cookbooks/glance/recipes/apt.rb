package "python-software-properties"

execute "apt-add-repository ppa:glance-core/trunk && apt-get update" do
  creates "/etc/apt/sources.list.d/glance-core-trunk-#{node.lsb.codename}.list"
end

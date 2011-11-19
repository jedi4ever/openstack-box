include_recipe "apt"

apt_repository "openstack-nova" do
  keyserver "keyserver.ubuntu.com"
  key "2A2356C9"
  uri "http://ppa.launchpad.net/nova-core/trunk/ubuntu"
  distribution node["lsb"]["codename"]
  components ["main"]
  action :add
end

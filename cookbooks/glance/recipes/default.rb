include_recipe "apt"

apt_repository "openstack-glance" do
  keyserver "keyserver.ubuntu.com"
  key "2085FE8D"
  uri "http://ppa.launchpad.net/glance-core/trunk/ubuntu"
  distribution node["lsb"]["codename"]
  components ["main"]
  action :add
end

package "glance"

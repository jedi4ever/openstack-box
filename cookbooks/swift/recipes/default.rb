include_recipe "apt"

apt_repository "openstack-swift" do
  keyserver "keyserver.ubuntu.com"
  key "562598B4"
  uri "http://ppa.launchpad.net/swift-core/trunk/ubuntu"
  distribution node["lsb"]["codename"]
  components ["main"]
  action :add
end

package "swift"

directory "/etc/swift" do
  owner "swift"
  group "swift"
end

template "/etc/swift/swift.conf" do
  owner "swift"
  group "swift"
end

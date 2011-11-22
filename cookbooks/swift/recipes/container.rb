include_recipe "swift"

package "swift-container"
package "xfsprogs"

template "/etc/swift/container-server.conf" do
  owner "swift"
  group "swift"
end

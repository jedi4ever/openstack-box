include_recipe "swift"

package "swift-object"
package "xfsprogs"

template "/etc/swift/object-server.conf" do
  owner "swift"
  group "swift"
end

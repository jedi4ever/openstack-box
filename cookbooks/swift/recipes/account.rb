include_recipe "swift"

package "swift-account"
package "xfsprogs"

template "/etc/swift/account-server.conf" do
  owner "swift"
  group "swift"
end

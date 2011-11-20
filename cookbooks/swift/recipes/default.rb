include_recipe "swift::apt"

package "swift"

directory "/etc/swift" do
  owner "swift"
  group "swift"
end

template "/etc/swift/swift.conf" do
  owner "swift"
  group "swift"
end

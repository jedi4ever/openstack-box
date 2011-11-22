include_recipe "memcached"
include_recipe "swift"

package "swift-proxy"

template "/etc/swift/proxy-server.conf" do
  owner "swift"
  group "swift"
end

include_recipe "git"

git "/usr/local/src/swauth" do
  repository "https://github.com/gholt/swauth.git"
  reference "master"
end

execute "install swauth" do
  cwd "/usr/local/src/swauth"
  command "python setup.py install"
  creates "/usr/local/bin/swauth-prep"
end

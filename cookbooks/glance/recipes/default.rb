include_recipe "glance::apt"

package "glance" do
  options "--force-yes -o Dpkg::Options::=\"--force-confdef\""
  action :install
end

include_recipe "glance::mysql"

service "glance-registry"

template "/etc/glance/glance-registry.conf" do
  owner "root"
  group "root"
  mode 0644
  notifies :restart, "service[glance-registry]"
end

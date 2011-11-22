include_recipe "nova::apt"

package "nova-common"

package "euca2ools"
package "unzip"

execute "nova-manage db sync" do
  user "nova"
  action :nothing
end

template "/etc/nova/nova.conf" do
  owner "nova"
  group "nova"
  mode 0600
  notifies :run, resources(:execute => "nova-manage db sync"), :immediately
end

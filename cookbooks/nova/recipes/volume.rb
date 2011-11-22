include_recipe "nova"

package "iscsitarget-dkms"

service "iscsitarget"

file "/etc/default/iscsitarget" do
  content "ISCSITARGET_ENABLE=true"
  notifies :restart, "service[iscsitarget]"
end

package "nova-volume" do
  options "--force-yes -o Dpkg::Options::=\"--force-confdef\""
  action :install
end

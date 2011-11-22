package "iscsitarget-dkms"

service "iscsitarget"

file "/etc/default/iscsitarget" do
  content "ISCSITARGET_ENABLE=true"
  notifies :restart, "service[iscsitarget]"
end

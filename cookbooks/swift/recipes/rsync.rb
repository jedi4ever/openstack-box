service "rsync" do
  action [:enable]
  supports :restart => true
end

file "/etc/default/rsync" do
  content "RSYNC_ENABLE=true"
  notifies :restart, "service[rsync]", :delayed
end

file "/etc/rsyncd.conf" do
  notifies :restart, "service[rsync]", :delayed
end

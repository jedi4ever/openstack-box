include_recipe "nova"

package "nova-scheduler" do
  options "--force-yes -o Dpkg::Options::=\"--force-confdef\""
  action :install
end

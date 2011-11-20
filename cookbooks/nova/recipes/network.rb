include_recipe "nova"

package "nova-network" do
  options "--force-yes -o Dpkg::Options::=\"--force-confdef\""
  action :install
end

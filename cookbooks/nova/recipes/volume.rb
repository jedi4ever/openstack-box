include_recipe "nova"

package "nova-volume" do
  options "--force-yes -o Dpkg::Options::=\"--force-confdef\""
  action :install
end

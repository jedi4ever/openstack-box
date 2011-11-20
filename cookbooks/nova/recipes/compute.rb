include_recipe "nova"

package "nova-compute" do
  options "--force-yes -o Dpkg::Options::=\"--force-confdef\""
  action :install
end

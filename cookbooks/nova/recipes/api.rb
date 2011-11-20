include_recipe "nova"

package "nova-api" do
  options "--force-yes -o Dpkg::Options::=\"--force-confdef\""
  action :install
end

include_recipe "nova"

package "nova-objectstore" do
  options "--force-yes -o Dpkg::Options::=\"--force-confdef\""
  action :install
end

include_recipe "glance::apt"

package "glance" do
  options "--force-yes -o Dpkg::Options::=\"--force-confdef\""
  action :install
end

include_recipe "glance::mysql"

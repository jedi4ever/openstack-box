#!/bin/bash -eux

# chef client
perl -p -i -e 's/localhost/10.10.10.10/g' /etc/chef/client.rb
invoke-rc.d chef-client start
update-rc.d chef-client defaults

# knife rsync
rsync -vac --exclude="checksums" /vagrant/.chef/ /home/vagrant/.chef/
chown -R vagrant:vagrant /home/vagrant/.chef
chmod -R go-rwsx /home/vagrant/.chef

# ssh rsync
rsync -vac /vagrant/.ssh/ /home/vagrant/.ssh/
chown -R vagrant:vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh

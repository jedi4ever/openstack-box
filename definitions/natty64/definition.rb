require File.dirname(__FILE__) + "/../.common/definition.rb"

options = {
  :os_type_id => "Ubuntu_64",
  :iso_file => "ubuntu-11.04-server-amd64.iso",
  :iso_src => "http://releases.ubuntu.com/11.04/ubuntu-11.04-server-amd64.iso",
  :iso_md5 => "355ca2417522cb4a77e0295bf45c5cd5"
}

Veewee::Session.declare(SESSION.merge(options))

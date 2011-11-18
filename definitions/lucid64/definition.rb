require File.dirname(__FILE__) + "/../.common/definition.rb"

options = {
  :os_type_id => "Ubuntu_64",
  :iso_file => "ubuntu-10.04.3-server-amd64.iso",
  :iso_src => "http://releases.ubuntu.com/10.04.3/ubuntu-10.04.3-server-amd64.iso",
  :iso_md5 => "84b43b7bbee85d0af8e11b778c8d1290"
}

Veewee::Session.declare(SESSION.merge(options))

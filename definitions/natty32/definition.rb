require File.dirname(__FILE__) + "/../.common/definition.rb"

options = {
  :os_type_id => "Ubuntu",
  :iso_file => "ubuntu-11.04-server-i386.iso",
  :iso_src => "http://releases.ubuntu.com/11.04/ubuntu-11.04-server-i386.iso",
  :iso_md5 => "b1a479c6593a90029414d201cb83a9cc"
}

Veewee::Session.declare(SESSION.merge(options))

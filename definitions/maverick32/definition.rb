require File.dirname(__FILE__) + "/../.common/definition.rb"

options = {
  :os_type_id => "Ubuntu",
  :iso_file => "ubuntu-10.10-server-i386.iso",
  :iso_src => "http://releases.ubuntu.com/maverick/ubuntu-10.10-server-i386.iso",
  :iso_md5 => "ce1cee108de737d7492e37069eed538e"
}

Veewee::Session.declare(SESSION.merge(options))

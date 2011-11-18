require File.dirname(__FILE__) + "/../.common/definition.rb"

options = {
  :os_type_id => "Ubuntu",
  :iso_file => "ubuntu-10.04.3-server-i386.iso",
  :iso_src => "http://releases.ubuntu.com/10.04.3/ubuntu-10.04.3-server-i386.iso",
  :iso_md5 => "388104f6225ae676ceab0ba4bd7b5784"
}

Veewee::Session.declare(SESSION.merge(options))

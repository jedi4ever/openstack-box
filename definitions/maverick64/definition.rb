require File.dirname(__FILE__) + "/../.common/definition.rb"

options = {
  :os_type_id => "Ubuntu_64",
  :iso_file => "ubuntu-10.10-server-amd64.iso",
  :iso_src => "http://releases.ubuntu.com/maverick/ubuntu-10.10-server-amd64.iso",
  :iso_md5 => "ab66a1d59a8d78e9ea8ef9b021d6574a"
}

Veewee::Session.declare(SESSION.merge(options))

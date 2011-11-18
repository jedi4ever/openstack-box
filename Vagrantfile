#-*- mode: ruby; -*-

FileUtils.mkdir_p @cachedir = '/var/tmp/openstack/apt'

def ip        ; @ip = (@ip ||= 99) + 1 ; end
def prv(n=10) ; "10.10.10.#{n}"        ; end
def pub(n=10) ; "10.10.20.#{n}"        ; end

def box(name, options={}, &block)
  Vagrant::Config.run do |config|
    config.vm.define name do |node|
      opts = {
        :box => ENV["BOX"] || "natty32",
        :forward => {},
        :memory => 512,
        :ip => ip,
        :pre_scripts => [],
        :post_scripts => []
      }.merge options
      node.vm.host_name = "#{name}.local"
      node.vm.box = opts[:box]
      node.vm.customize { |vm| vm.memory_size = opts[:memory] }
      opts[:forward].each do |src,dst|
        node.vm.forward_port "#{src}->#{dst}", src, dst, :auto => true
      end
      node.vm.network prv(opts[:ip]), :netmask => "255.255.255.0", :adapter => 1
      node.vm.network pub(opts[:ip]), :netmask => "255.255.255.0", :adapter => 2
      opts[:pre_scripts].each {|x| node.vm.provision :shell, :path => x}
      node.vm.provision :chef_client do |chef|
        chef.chef_server_url = "http://#{prv}:4000"
        chef.validation_key_path = ".chef/validation.pem"
        chef.log_level = :debug
        chef.json.merge!({ :prv => prv(opts[:ip]),
                           :pub => pub(opts[:ip]) })
        yield chef if block
      end
      opts[:post_scripts].each {|x| node.vm.provision :shell, :path => x}
      node.vm.provision :shell, :path => "scripts/node.sh"
      node.vm.share_folder( 'apt-get-cache', '/var/cache/apt', @cachedir )
    end
  end
end

Dir[ File.dirname(__FILE__) + '/vagrant/*.rb' ].sort.each { |f| load f }

unless File.exist? File.dirname(__FILE__) + "/.chef/validation.pem"
  File.open File.dirname(__FILE__) + "/.chef/validation.pem", "w" do |f|
    f.write ""
  end
end

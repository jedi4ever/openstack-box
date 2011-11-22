default.swift.proxy.bind_ip = "127.0.0.1"
default.swift.proxy.bind_port = 8080
default.swift.proxy.cluster_address =
  "http://#{node.swift.proxy.bind_ip}:#{node.swift.proxy.bind_port}"
default.swift.proxy.memcache_servers = '127.0.0.1:11211'
default.swift.proxy.workers = 2

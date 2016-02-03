actions :define, :create, :autostart
default_action :define

attribute :bridge, :kind_of => String
attribute :netmask, :kind_of => String
attribute :gateway, :kind_of => String
attribute :forward, :kind_of => String
attribute :domain, :kind_of => String
attribute :dhcp_range, :kind_of => Hash
attribute :uri, :kind_of => String, :default => 'qemu:///system'

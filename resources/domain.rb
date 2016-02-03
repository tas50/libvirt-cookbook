actions :define, :create, :autostart
default_action :define

attribute :vcpu, :kind_of => [Integer, String], :required => true
attribute :memory, :kind_of => [Integer, String], :required => true
attribute :arch, :kind_of => String, :required => true
attribute :uri, :kind_of => String, :default => 'qemu:///system'

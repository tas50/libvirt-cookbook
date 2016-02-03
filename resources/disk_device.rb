actions :attach
default_action :attach

attribute :type,   :kind_of => String, :default => 'block'
attribute :bus,    :kind_of => String, :default => 'virtio'
attribute :source, :kind_of => String
attribute :target, :kind_of => String, :name_attribute => true
attribute :domain, :kind_of => String
attribute :uri,    :kind_of => String, :default => 'qemu:///system'

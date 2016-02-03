name             "libvirt"
maintainer       "VPSLab"
maintainer_email "pawel.pacana@gmail.com"
license          "Apache 2.0"
description      "Installs libvirt and provides libvirt resources."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.2.1"

%w(ubuntu debian).each do |os|
  supports os
end

source_url 'https://github.com/vpslab/libvirt-cookbook' if respond_to?(:source_url)
issues_url 'https://github.com/vpslab/libvirt-cookbook/issues' if respond_to?(:issues_url)

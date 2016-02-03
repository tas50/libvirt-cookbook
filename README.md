# libvirt Cookbook
 [![Cookbook Version](https://img.shields.io/cookbook/v/libvirt.svg)](https://supermarket.chef.io/cookbooks/libvirt)
 
Installs libvirt with Ruby bindings. Provides set of resources to manage domain, network and several devices.


## Requirements
### Platforms
- Debian/Ubuntu

### Chef
- Chef 11+

### Cookbooks
- none

## Usage

```ruby
libvirt_network 'fake_network' do
  netmask    '255.255.0.0'
  gateway    '192.168.42.1'
  bridge     'fakebr'
  forward    'nat'
  dhcp_range :start => '192.168.42.100', :end => '192.168.42.200'

  action [:define, :create, :autostart]
end

libvirt_domain 'fake_dummy' do
  provider 'libvirt_domain_kvm'
  vcpu     '2'
  memory   '512M'
  arch     'amd64'

  action [:define, :create, :autostart]
end

libvirt_disk_device 'vda' do
  source '/dev/mapper/vdisk-vm--dummy'
  domain 'fake_dummy'

  action :nothing
  subscribes :attach, resources(:libvirt_domain => 'fake_dummy'), :immediately
end

libvirt_network_interface '00:57:20:f8:94:cf' do
  source 'fakebr'
  domain 'fake_dummy'

  action :nothing
  subscribes :attach, resources(:libvirt_domain => 'fake_dummy'), :immediately
end
```

## License
```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

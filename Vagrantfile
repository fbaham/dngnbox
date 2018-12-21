Vagrant.configure("2") do |config|
  config.vm.box = 'dngnmster/dngnbox'
  name = File.basename(Dir.getwd) + '-dev'

  config.vm.synced_folder '~/code/rails', '/vagrant'
  config.vm.hostname = name
  config.vm.provider :virtualbox do |v|
    v.name = name
    v.memory = 2048
    v.cpus = 2
    v.customize [
      'modifyvm', :id,
      '--nictype1', 'virtio',
      '--name', name,
      '--natdnshostresolver1', 'on',
      '--uartmode1', 'disconnected'
    ]
  end
  
  # rails
  config.vm.network 'forwarded_port', guest: 3000, host: 3000
  # Script provision
  config.vm.provision "shell", privileged: false, path: "script.sh"
end

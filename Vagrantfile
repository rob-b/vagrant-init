# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "base"

  config.vm.network :hostonly, "33.33.33.10"
  config.vm.forward_port 80, 8080
  config.vm.forward_port 8000, 8001
  config.vm.share_folder("v-root", "/vagrant", File.dirname(Dir.pwd), :nfs => true)

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe('vagrant_main')

    chef.json.merge!({
      :dotfiles => {
        :repository => "https://bitbucket.org/rob_b/dotfiles.git",
        :enable_submodules => false,
        :shell => '/bin/zsh'
      }
    })
  end
end

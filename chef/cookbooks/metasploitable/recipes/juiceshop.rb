#
# Cookbook:: metasploitable
# Recipe:: default
#
# Copyright:: 2023, Tobias Tefke

include_recipe 'metasploitable::docker'

bash "Installing JuiceShop" do
  code <<-EOH
    docker pull bkimminich/juice-shop
    docker run --rm -p 8182:3000 -d bkimminich/juice-shop
  EOH
end

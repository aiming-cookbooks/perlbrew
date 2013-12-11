#
# Cookbook Name:: apt-get-update
# Recipe:: default
#
# Copyright 2013, Aiming Inc.
#

case node['platform_family']
when 'debian'
  include_recipe 'apt'
  
  execute 'apt get update' do
    command <<-EOF
      apt-get update
    EOF
  end
end

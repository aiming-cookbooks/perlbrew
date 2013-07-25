# Author:: Aiming Inc.
# Cookbook Name:: perlbrew
# Resource:: perlbrew_run

actions :install, :run
default_action :install

attribute :cwd, :kind_of => String, :required => true
attribute :perlbrew, :kind_of => String, :required => true

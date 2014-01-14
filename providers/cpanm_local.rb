# Cookbook Name:: perlbrew
# Provider:: perlbrew_cpanm_local
# Cpanm local install.

require 'chef/mixin/shell_out'
require 'chef/mixin/language'
include Chef::Mixin::ShellOut

action :install do
  perlbrew_env = {
    'PERLBREW_ROOT' => node.default['perlbrew']['perlbrew_root'],
    'PERLBREW_HOME' => node.default['perlbrew']['perlbrew_root']
  }

  pl = perlbrew_run "cpanm -n --installdeps ." do
    cwd new_resource.name
    perlbrew new_resource.perlbrew
    action :nothing
  end
  pl.run_action(:run)
  new_resource.updated_by_last_action(true)
end

alias_method :action_run, :action_install

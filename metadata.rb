name             "perlbrew"
maintainer       "Aiming Inc."
maintainer_email "info@aiming-inc.com"
license          "Apache 2.0"
version          "0.2.1"
description      "Installs/Configures perlbrew"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
recipe           "perlbrew::default", "Installs/updates perlbrew"

%w{ debian ubuntu centos amazon }.each do |os|
  supports os
end

depends "apt"
depends "yum", ">= 3.0.0"
depends "build-essential"

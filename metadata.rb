name             "perlbrew"
maintainer       "Aiming Inc."
maintainer_email "info@aiming-inc.com"
license          "Apache 2.0"
version          "0.1.0"
description      "Installs/Configures perlbrew"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
recipe           "perlbrew::default", "Installs/updates perlbrew"

%w{ debian ubuntu centos amazon }.each do |os|
  supports os
end

depends "apt"
depends "yum"
depends "yum-centos"
depends "yum-epel"
depends "build-essential"

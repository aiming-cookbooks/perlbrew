require_relative 'helper'

describe file("/opt/perlbrew/bin/perlbrew") do
  it { should be_executable }
end

describe file("/etc/profile.d/perlbrew.sh") do
  it { should be_file }
end

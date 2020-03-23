require 'albacore'

task :default => [:install, :msbuild]

build :msbuild do |msb|
  msb.file = 'SeleniumExample.sln'
  msb.properties = { :configuration => :Debug }
  msb.target = [:Restore, :Clean, :Build ]      
end

desc "Install required packages"
nugets_pack :install do |cmd|
  cmd.nuspec = 'SeleniumExample.sln'
end
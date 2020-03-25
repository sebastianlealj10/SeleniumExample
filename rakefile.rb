require 'albacore'

task :default => [:msbuild]

msbuild :msbuild do |cmd|
  cmd.solution = 'SeleniumExample.sln'
  msb.targets = [:Clean, :Build ]      
  msb.properties = { :configuration => :Debug }
end
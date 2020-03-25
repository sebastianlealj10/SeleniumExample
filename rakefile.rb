require 'albacore'

task :default => [:msbuild]

msbuild :msbuild do |cmd|
  cmd.solution = 'SeleniumExample.sln'
  cmd.targets = [:Clean, :Build ]      
  cmd.properties = { :configuration => :Debug }
end
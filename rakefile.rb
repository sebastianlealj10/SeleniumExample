require 'albacore'

task :default => [:msbuild]

build :msbuild do |msb|
  msb.properties = { :configuration => :Debug }
  msb.target = [ :Clean, :Build ]      
  msb.solution = "SeleniumExample.sln"
end
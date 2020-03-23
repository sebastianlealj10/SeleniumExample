require 'albacore'

task :default => [:msbuild]

build :msbuild do |msb|
  msb.file = 'SeleniumExample.sln'
  msb.properties = { :configuration => :Debug }
  msb.target = [:Clean, :Build ]      
end
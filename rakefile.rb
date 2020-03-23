require 'albacore'

task :default => [:msbuild]

build :msbuild do |msb|
  msb.properties = { :configuration => :Debug }
  msb.targets = [ :Clean, :Build ]      
  msb.solution = "AlbacoreDemo.sln"
end
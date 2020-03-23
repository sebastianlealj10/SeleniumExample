require 'albacore'

task :default => [:msbuild, :nunit]

build :msbuild do |msb|
  msb.file = 'SeleniumExample.sln'
  msb.properties = { :configuration => :Debug }
  msb.target = [:Restore, :Clean, :Build ]      
end

desc "Run all nunit tests"
nunit :nunit => [:msbuild] do |nunit|
    nunit.command = "nunit-console.exe"
    nunit.assemblies "bin\Debug\SeleniumExample.dll"
end

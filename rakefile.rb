require 'albacore'

task :default => [:msbuild, :test]

build :msbuild do |msb|
  msb.file = 'SeleniumExample.sln'
  msb.properties = { :configuration => :Debug }
  msb.target = [:Restore, :Clean, :Build ]      
end

desc "Run all nunit tests"
nunit :test => [:build] do |cmd|
    nunit.command = "nunit-console.exe"
    nunit.assemblies "bin\Debug\SeleniumExample.dll"
end

require 'albacore'
require 'bundler/setup'
require 'rake/clean'

task :default => [:build, :test]

msbuild :build do |cmd|
  cmd.solution = 'SeleniumExample.sln'
  cmd.targets = [:Build]      
  cmd.properties = { :Configuration => :Debug }
end

nunit :test do |nunit| 
  nunit.command = "C:\TeamCity\buildAgent\tools\NUnit.Console.3.11.1\bin\net20\nunit3-console.exe"
  nunit.assemblies "C:\TeamCity\buildAgent\work\884196217c13b442\bin\Debug\SeleniumExample.dll"
end
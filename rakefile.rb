require 'albacore'

task :default => [:msbuild, :test]

msbuild :msbuild do |cmd|
  cmd.solution = 'SeleniumExample.sln'
  cmd.targets = [:Clean, :Build ]      
  cmd.properties = { :configuration => :Debug }
end

desc "Run all nunit tests"
nunit :test do |nunit| 
  nunit.command = "C:\TeamCity\buildAgent\tools\NUnit.Console.3.11.1\bin\net35\nunit3-console.exe"
  nunit.assemblies "bin\Debug\SeleniumExample.dll"
  nunit.options "C:\TeamCity\buildAgent\temp\agentTmp\n6sSJFPAWStmrA2dqChyfmAytOQSnaEG.nunit.xml"
end
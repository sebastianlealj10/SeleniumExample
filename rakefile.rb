require 'albacore'

task :default => [:msbuild, :test]

msbuild :msbuild do |cmd|
  cmd.solution = 'SeleniumExample.sln'
  cmd.targets = [:Clean, :Build ]      
  cmd.properties = { :configuration => :Debug }
end

desc "Run all nunit tests"
nunit :test => [:msbuild] do |cmd|
  cmd.command = "C:\TeamCity\buildAgent\tools\NUnit.Console.3.11.1\bin\net35\nunit3-console.exe"
  cmd.assemblies = FileList["bin\Debug\SeleniumExample.dll"]
  cmd.results_path = "C:\TeamCity\buildAgent\temp\agentTmp\n6sSJFPAWStmrA2dqChyfmAytOQSnaEG.nunit.xml"
  cmd.no_logo
end
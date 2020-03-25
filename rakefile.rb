require 'albacore'

task :default => [:msbuild, :test]

msbuild :msbuild do |cmd|
  cmd.solution = 'SeleniumExample.sln'
  cmd.targets = [:Clean, :Build ]      
  cmd.properties = { :configuration => :Debug }
end

desc "Run all nunit tests"
nunit :test do |nunit|
  mkdir_p(BUILD_OUTPUT_TEST_DIR)  
  nunit.command = File.join("C:\TeamCity\buildAgent\tools\NUnit.Console.3.11.1\bin\net35\nunit3-console.exe")
  nunit.assemblies = FileList["bin\Debug\SeleniumExample.dll"]
  nunit.options "/result:#{BUILD_OUTPUT_TEST_DIR}/TestResult.xml"
end
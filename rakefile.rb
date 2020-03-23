require ‘albacore’
msbuild :build do |msb|
  msb.solution = “src/SeleniumExample.sln”
  msb.targets :clean, :build
  msb.properties :configuration => :release
end
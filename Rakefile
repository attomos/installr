require "bundler"
Bundler.setup

gemspec = eval(File.read("installr.gemspec"))

task :build => "#{gemspec.full_name}.gem"

file "#{gemspec.full_name}.gem" => gemspec.files + ["installr.gemspec"] do
  system "gem build installr.gemspec"
end


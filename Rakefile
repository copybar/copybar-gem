#!/usr/bin/env rake
require "bundler/gem_tasks"

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "copybar/version"

desc 'Default: run specs.'
task :default => :spec

task :gem => :build
task :build do
  system "gem build copybar.gemspec"
end

task :install => :build do
  system "gem install copybar-#{Copybar::VERSION}.gem"
end

task :release => :build do
  system "git tag -a v#{Copybar::VERSION} -m 'Tagging #{Copybar::VERSION}'"
  system "git push --tags"
  system "gem push copybar-#{Copybar::VERSION}.gem"
end

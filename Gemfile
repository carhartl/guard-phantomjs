source "http://rubygems.org"

# Specify your gem's dependencies in guard-phantomjs.gemspec
gemspec

require 'rbconfig'

if Config::CONFIG['target_os'] =~ /darwin/i
  gem 'rb-fsevent'
  gem 'growl'
end
if Config::CONFIG['target_os'] =~ /linux/i
  gem 'rb-inotify'
  gem 'libnotify'
end

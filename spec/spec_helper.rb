require 'bundler/setup'
require 'action_view'
require 'action_controller'
require File.dirname(__FILE__) + '/../lib/gotcha'

# Load translation files
I18n.load_path << Dir["#{Dir.pwd}/config/locales/*.yml"]
require "codeclimate-test-reporter"
CodeClimate::TestReporter.start
require 'bundler/setup'
require 'action_view'
require 'action_controller'
require 'pry-byebug'
require File.dirname(__FILE__) + '/../lib/gotcha'

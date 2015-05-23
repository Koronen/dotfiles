#!/usr/bin/env ruby

require 'irb/completion'

IRB.conf[:IRB_NAME] = File.basename(Dir.pwd)
if env = [ENV['RAILS_ENV'], ENV['RACK_ENV']].compact.first
  IRB.conf[:IRB_NAME] += "-#{env}"
end

IRB.conf[:SAVE_HISTORY] = 1000

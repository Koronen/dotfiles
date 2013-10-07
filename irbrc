#!/usr/bin/env ruby

require 'irb/completion'
require 'irb/ext/save-history'

%w[rubygems].each do |gem|
  begin
    require gem
  rescue LoadError
  end
end

IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:SAVE_HISTORY] = 1000

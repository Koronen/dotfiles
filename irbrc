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

# Project-specific .irbrc
# from http://github.com/greatseth/dotfiles/blob/master/irbrc
if Dir.pwd != File.expand_path("~")
  local_irbrc = File.expand_path '.irbrc'
  if File.exist? local_irbrc
    load local_irbrc
  end
end

#!/usr/bin/env ruby

require 'irb/completion'
require 'irb/ext/save-history'

%w[rubygems].each do |gem|
  begin
    require gem
  rescue LoadError
  end
end

IRB.conf[:AUTO_INDENT] = true
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1000

# Print history
# from http://railscasts.com/episodes/191-mechanize
def history(lines = 10)
  puts Readline::HISTORY.entries[(-2-lines)..-2].join("\n")
end

# Project-specific .irbrc
# from http://github.com/greatseth/dotfiles/blob/master/irbrc
if Dir.pwd != File.expand_path("~")
  local_irbrc = File.expand_path '.irbrc'
  if File.exist? local_irbrc
    load local_irbrc
  end
end

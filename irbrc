require 'rubygems'
require 'irb/completion'

IRB.conf[:AUTO_INDENT]=true

# Project-specific .irbrc
# from http://github.com/greatseth/dotfiles/blob/master/irbrc
if Dir.pwd != File.expand_path("~")
  local_irbrc = File.expand_path '.irbrc'
  if File.exist? local_irbrc
    load local_irbrc
  end
end

# Print history
# from http://railscasts.com/episodes/191-mechanize
def history(lines = 10)
  puts Readline::HISTORY.entries[(-2-lines)..-2].join("\n")
end

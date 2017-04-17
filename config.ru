$LOAD_PATH.unshift(File.dirname(__FILE__))

# load and parse `.env`
require 'dotenv'
Dotenv.load

require 'wans'
require 'web'

Thread.abort_on_exception = true

# Run bot in a thread
Thread.new do
  begin
    Wans::Bot.run
  rescue Exception => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

# Run bot's web-server
run Wans::Web

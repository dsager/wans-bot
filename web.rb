require 'sinatra/base'

module Wans
  # Simple web server for the bot
  #
  class Web < Sinatra::Base
    get '/' do
      'What about next sprint?'
    end
  end
end

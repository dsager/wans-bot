module Wans
  module Commands
    # Example command, replies to `ping` with `pong`
    #
    class Ping < SlackRubyBot::Bot
      command 'ping' do |client, data, _match|
        client.say(channel: data.channel, text: 'pong')
      end
    end
  end
end

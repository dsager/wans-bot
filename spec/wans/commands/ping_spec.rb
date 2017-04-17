require 'spec_helper'

describe Wans::Commands::Ping do
  let(:app) { Wans::Bot.instance }

  subject { app }

  it 'plays along' do
    expect(
      message: "#{SlackRubyBot.config.user} ping",
      channel: 'channel'
    ).to respond_with_slack_message('pong')
  end
end

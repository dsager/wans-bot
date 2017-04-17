$LOAD_PATH.unshift(File.dirname(__FILE__))

task default: [:wans]

task :wans do
  require 'wans'
  require 'dotenv'
  Dotenv.load
  Slack.configure do |config|
    config.token = ENV['SLACK_API_TOKEN']
  end
  client = Slack::Web::Client.new
  client.chat_postMessage(
    channel: '@dani',
    text: 'Hello World',
    as_user: true,
    attachments: [
      {
        text: 'Monday 17th',
        fallback: 'unable to confirm',
        callback_id: 'wans_monday',
        color: '#3AA3E3',
        attachment_type: 'default',
        actions: [
          {
            name: 'availability',
            text: 'full day',
            type: 'button',
            value: 'full'
          },
          {
            name: 'availability',
            text: 'half a day',
            type: 'button',
            value: 'half'
          },
          {
            name: 'availability',
            text: 'a little bit',
            type: 'button',
            value: 'little'
          },
          {
            name: 'availability',
            text: 'nada :(',
            type: 'button',
            value: 'none'
          }
        ]
      }
    ]
  )
end

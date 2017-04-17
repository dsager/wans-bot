require 'spec_helper'

describe Wans::Bot do
  let(:app) { Wans::Bot.instance }

  subject { app }

  it_behaves_like 'a slack ruby bot'
end

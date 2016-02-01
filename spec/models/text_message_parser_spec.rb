require 'rails_helper'

RSpec.describe TextMessageParser, type: :model do
  describe '#parse!' do
    let(:text_message) { TextMessage.new(body: 'hello world #foo #123bar yeaaa') }

    it 'sets the list of topics' do
      parser = TextMessageParser.new(text_message)
      parser.parse!

      expect(parser.topics).to eq(['foo', '123bar'])
    end

    it 'sets the body words' do
      parser = TextMessageParser.new(text_message)
      parser.parse!

      expect(parser.body_words).to eq(['hello', 'world', 'yeaaa'])
    end
  end

  describe '#body_only' do
    it 'returns the body text without the topics' do
      text_message = TextMessage.new(body: 'hello world #foo #123bar yeaaa')
      parser = TextMessageParser.new(text_message)
      parser.parse!

      expect(parser.body_only).to eq('hello world yeaaa')
    end
  end
end

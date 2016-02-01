class TextMessageParser
  attr_accessor :topics, :body_words
  attr_reader :text_message

  HASHTAG_PATTERN = /^#(\w+)/
  WORD_PATTERN = /\s+/

  def initialize(text_message)
    @text_message = text_message
    @topics = []
    @body_words = []
  end

  def parse!
    message_words.each do |word|
      if topic = word[HASHTAG_PATTERN, 1]
        topics << topic
      else
        body_words << word
      end
    end
  end

  def body_only
    body_words.join(' ')
  end

  private

  def message_words
    text_message.body.split(WORD_PATTERN)
  end
end

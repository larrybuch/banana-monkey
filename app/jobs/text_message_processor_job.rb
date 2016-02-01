class TextMessageProcessorJob < ActiveJob::Base
  queue_as :default

  def perform(text_message)
    text_message.parse_and_create_content
  end
end

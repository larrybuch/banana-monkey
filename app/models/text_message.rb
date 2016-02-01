class TextMessage < ActiveRecord::Base
  validates :body, :phone_number, presence: true

  def parse_and_create_content
    parser = TextMessageParser.new(self)
    parser.parse!

    self.transaction do
      nugget = Nugget.create!(
        user: user,
        body: parser.body_only
      )

      parser.topics.each do |topic_name|
        topic = Topic.find_or_create_by!(name: topic_name)
        TopicItem.create!(topic: topic, nugget: nugget)
      end
    end
  end

  private

  def user
    @user ||= User.find_by!(phone_number: phone_number)
  end
end

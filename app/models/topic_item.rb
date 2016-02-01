class TopicItem < ActiveRecord::Base
  belongs_to :nugget
  belongs_to :topic
end

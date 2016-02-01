class Nugget < ActiveRecord::Base
  belongs_to :user
  has_many :topics, through: :topic_items
  has_many :topic_items

  validates :user, :body, presence: true
end

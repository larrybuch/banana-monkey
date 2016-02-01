class Topic < ActiveRecord::Base
  has_many :nuggets, through: :topic_items
  has_many :topic_items

  validates :name, presence: true
end

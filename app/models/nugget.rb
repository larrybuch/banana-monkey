class Nugget < ActiveRecord::Base
  belongs_to :user
  has_many :topics, through: :lists
  has_many :lists

  validates :user, :text, presence: true
end

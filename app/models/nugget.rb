class Nugget < ActiveRecord::Base
  belongs_to :user

  validates :user, :text, presence: true
end

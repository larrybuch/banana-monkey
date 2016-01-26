class User < ActiveRecord::Base
  has_many :nuggets, dependent: :destroy

  validates :phone_number, presence: true
end

class TextMessage < ActiveRecord::Base
  validates :body, :phone_number, presence: true
end

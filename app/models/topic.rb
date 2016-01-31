class Topic < ActiveRecord::Base
  has_many :nuggets, through: :lists
  has_many :lists
end

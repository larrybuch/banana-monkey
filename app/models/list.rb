class List < ActiveRecord::Base
  belongs_to :nugget
  belongs_to :topic
end

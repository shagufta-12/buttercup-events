class Like < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  # belongs_to :venue
end

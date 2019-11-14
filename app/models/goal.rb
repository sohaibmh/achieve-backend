class Goal < ApplicationRecord
  belongs_to :user
  has_many :calendars, dependent: :destroy
end

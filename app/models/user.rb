class User < ApplicationRecord
  has_many :calendars
  has_secure_password 
end

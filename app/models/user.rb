class User < ApplicationRecord
  has_many :goals
  has_secure_password 
end

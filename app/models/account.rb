class Account < ApplicationRecord
  has_many :posts
  has_one :profile
end

class User < ApplicationRecord
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :uid, presence: true
  validates :uid, uniqueness: true
end

class User < ApplicationRecord
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :uid, presence: true
  validates :uid, uniqueness: true

  def self.find_or_create user_info
    find_or_create_by(uid: user_info.user_id) do |user|
      user.provider = user_info.provider
      user.email = user_info.name
    end
  end
end

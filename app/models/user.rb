class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :validatable, :confirmable, :lockable, :trackable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, confirmation: true
  validates :email_confirmation, presence: true
end

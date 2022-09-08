class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_many :hikes, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_one_attached :photo
  
  validates :first_name, :last_name, :location, presence: true
end

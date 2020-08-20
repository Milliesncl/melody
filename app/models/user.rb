class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :meetings, dependent: :destroy
  has_many :instruments, through: :bookings
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :address, presence: true
end

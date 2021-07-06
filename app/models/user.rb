class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :talks, through: :appointments
  has_many :appointments
  has_many :favorites
  
  validates :first_name, presence: true
  validates :email, presence: true
end

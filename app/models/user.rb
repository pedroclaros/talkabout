class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_favoritor
  has_one_attached :photo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :talks, through: :appointments
  has_many :appointments
  validates :first_name, presence: true
  validates :email, presence: true
  
  private

  def send_welcome_email
    UserMailer.with(user: self).welcome.deliver_now
  end
end

class Talk < ApplicationRecord
  belongs_to :category
  has_many :appointments
  has_many :users, through: :appointments
  belongs_to :user

  validates :title, presence: true
  validates :description, length: { minimum: 15, maximum: 50 }
  validates :time, presence: true
  validates :date, presence: true
end

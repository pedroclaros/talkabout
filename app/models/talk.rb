class Talk < ApplicationRecord
  # belongs_to :project 
  # belongs_to :favorite
  has_many :categories
  has_many :appointments
  has_many :users, through: :appointments

  validates :title, presence: true
  validates :description, length: { minimum: 15, maximum: 50 }
  validates :time, presence: true
  validates :date, presence: true
end

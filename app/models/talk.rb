class Talk < ApplicationRecord
  acts_as_favoritable
  has_one_attached :photo
  belongs_to :creator, class_name: "User", foreign_key: "user_id"

  belongs_to :category
  has_many :appointments
  has_many :users, through: :appointments
  belongs_to :user

  validates :title, presence: true
  validates :description, length: { minimum: 15, maximum: 150 }
  validates :time, presence: true
  validates :date, presence: true

  include PgSearch::Model
  pg_search_scope :search_with_pg,
    against: [ :price, :date, :title, :description ],
    associated_against: {
      category: [:title]
    },
    using: {
      tsearch: { prefix: true }
    }

end

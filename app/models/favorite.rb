class Favorite < ApplicationRecord
  belongs_to :talk
  belongs_to :user  
end

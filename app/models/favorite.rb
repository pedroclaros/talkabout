class Favorite < ApplicationRecord
  belongs_to :talk_id
  belongs_to :user_id
end

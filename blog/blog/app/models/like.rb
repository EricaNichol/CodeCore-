class Like < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates :post_id, uniqueness: {scope: :user_id} #makdes sure that only 1 user gets to vote 
end

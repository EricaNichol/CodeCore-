class Comment < ActiveRecord::Base

  belongs_to :post
  belongs_to :user

  validates :body, presence: {message: "Comment is required"},
                   uniqueness: {scope: :post_id}


end

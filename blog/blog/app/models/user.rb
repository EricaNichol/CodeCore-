class User < ActiveRecord::Base

  has_secure_password

  #has_many :votes, dependent: :destroy
  #has_many :voted_posts, through: :votes, resource: :post

  has_many :posts , dependent: :nullify
  has_many :comments, dependent: :nullify

  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post

  has_many :favorites, dependent: :destroy
  has_many :favorited_posts, through: :favorites, source: :post

  validates :email, presence: true, uniqueness: true,
            format: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i


  def liked_post?(post)
    liked_posts.include?(post)
  end

  def favorited_post?(post)
    favorited_posts.include?(post)
  end

  def voted_post?(post)
    voted_posts.include?(post)
  end
end

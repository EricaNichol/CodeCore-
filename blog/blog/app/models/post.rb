class Post < ActiveRecord::Base

  belongs_to :user
  belongs_to :category

  #has_many :votes, dependent: :destroy
  #has_many :voters, through: :votes, resource: :user

  has_many :comments, dependent: :nullify

  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user

  has_many :tags, through: :taggings
  has_many :taggings, dependent: :destroy


  validates :title, presence: {message: "Must have a title"}

  mount_uploader :image, ImageUploader

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  def like_for(user) #current_id is user
    likes.find_by_user_id(user.id)
  end

  def favorite_for(user)
    favorites.find_by_user_id(user.id)
  end

  def category_name
    category.name
  end

  def to_param
    "#{id}-#{title}".parameterize
  end

end

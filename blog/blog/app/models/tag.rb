class Tag < ActiveRecord::Base
  validates :name, uniqueness: true,
                   presence: true

  has_many :posts, through: :taggings
  has_many :taggings, dependent: :destroy
end

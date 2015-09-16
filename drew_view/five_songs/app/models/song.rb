class Song < ActiveRecord::Base
  #scope :recent, ->(x) { order("updated_at ASC").limit(x)}
  scope :recent_five, -> { order('updated_at ASC').limit(5)}
end

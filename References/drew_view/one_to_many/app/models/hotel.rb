class Hotel < ActiveRecord::Base
  has_many :guests
end

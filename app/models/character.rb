class Character < ActiveRecord::Base
  has_many :wordcounts
  has_many :chapters, through: :wordcounts
end

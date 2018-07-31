class Chapter < ActiveRecord::Base
  has_many :wordcounts
  has_many :characters, through: :wordcounts
end

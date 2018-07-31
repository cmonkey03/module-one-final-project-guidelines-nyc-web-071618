class Wordcount < ActiveRecord::Base
  belongs_to :chapter
  belongs_to :character
end

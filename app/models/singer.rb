class Singer < ActiveRecord::Base

 has_many :songs
  has_many :lyrics, through: :songs

end
class Song < ActiveRecord::Base

  belongs_to_many :songs
 belongs_to_many :singers, through: :songs

end
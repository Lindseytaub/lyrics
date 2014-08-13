class Song < ActiveRecord::Base

  belongs_to :singer
  has_many :lyrics

end
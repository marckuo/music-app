class Track < ActiveRecord::Base
  validates :author, presence: true
  validates :artist, presence: true
  validates :song, presence: true
end
class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :reviews

  validates :artist, { presence: true }
  validates :tracks, { numericality: { greater_than: 0 } }

  def other_albums
    self.artist.albums
  end
end

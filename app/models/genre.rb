class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.uniq.count
  end

  def all_artist_names
    artists = self.artists
    artist_names = artists.collect { |given_artist| given_artist[:name] }
    artist_names
  end
end

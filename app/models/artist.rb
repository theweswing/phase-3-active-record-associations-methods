class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_first_song
    self.songs.first
  end

  def get_genre_of_first_song
    self.songs.first.genre
  end

  def song_count
    self.songs.count
  end

  def genre_count
    songs = self.songs
    genres = songs.collect { |given_song| given_song.genre }
    no_dupes = genres.uniq
    no_dupes.count
  end
end

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.size
  end

  def artist_count
    # return the number of artists associated with the genre
    count = self.songs.map {|song| song.artist}
    count.flatten.uniq.size
  end

  def all_artist_names
    all_artists = self.artists.map {|artist| artist.name}
  end
  
end

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  
    # return the number of songs in a genre
  end

  def artist_count

    # return the number of artists associated with the genre
    #go thru all my genres songs
    self.songs.map { |song| song.artist}.uniq.count
    #return artists of those songs => count
    #uniq prevent dupes from the count

  end

  def all_artist_names
    # return an array of strings containing every musician's name
    #return artist NAME
    self.songs.map {|song| song.artist.name}.uniq
    #.uniq - prevent dupes
  end
end

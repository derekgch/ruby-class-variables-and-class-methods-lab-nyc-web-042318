class Song
  attr_accessor :name, :artist , :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize (name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count +=1

    @@artists << artist

    @@genres<< genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq

  end

  def self.genres
    @@genres.uniq

  end

  def self.genre_count
    temp={}
    @@genres.each do |gen|
      if(!temp.has_key?(gen))
        temp[gen]=1
      else
        temp[gen] +=1
      end
    end
    temp

  end

  def self.artist_count

    temp={}
    @@artists.each do |art|
      if(!temp.has_key?(art))
        temp[art]=1
      else
        temp[art] +=1
      end
    end
    temp

  end


end

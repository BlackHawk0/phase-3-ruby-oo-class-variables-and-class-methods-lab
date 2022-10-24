class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count

    attr_accessor :genre, :name, :artist
    def initialize(song_name, artist, genre)
        @name = song_name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@count += 1
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
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end

Song.new("Lucifer", "Jay-Z", "rap")
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("hit me baby one more time", "Brittany Spears", "pop")

puts Song.count
pp Song.artists
pp Song.genres
pp Song.genre_count


# important notes on tally enum

# Tallies the collection, i.e., counts the occurrences of each element. 
# Returns a hash with the elements of the collection as keys and the 
# corresponding counts as values.
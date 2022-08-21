class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        @@count += 1
    end

    def self.genres
        @@genres = @@genres.uniq

    end

    # has a class variable, @@artists, that contains all of the artists of existing songs
    def self.artists
        @@artists = @@artists.uniq
    end

    def self.count
        @@count
    end

    # Song.genre_count: returns a hash in which the keys are the names of each genre. Each genre name key should point to a value that is the number of songs that have that genre.
    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            genre_count[genre] = 0
        end
        @@genres.each do |genre|
            genre_count[genre] += 1
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            artist_count[artist] = 0
        end
        @@artists.each do |artist|
            artist_count[artist] += 1
        end
        artist_count
    end
end


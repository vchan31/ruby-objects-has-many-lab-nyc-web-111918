require "pry"
class Artist
attr_accessor :name, :songs

@@allsongs =[]

def initialize (name)
@name = name
@songs = []

end

def add_song(new_song)
Song.new(new_song)
new_song.artist = self
@songs << new_song
@@allsongs << new_song
end	

def add_song_by_name (song_name)
new_song_by_name = Song.new(song_name)
new_song_by_name.artist = self
@songs << new_song_by_name
@@allsongs << new_song_by_name
end
#pry.binding
def self.song_count
@@allsongs.length
end

end 


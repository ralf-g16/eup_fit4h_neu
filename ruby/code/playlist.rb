class Playlist
	def initialize(name)
		@name = name
		@movies = []
	end

	def add_movie(movie)
		@movies << movie
	end
	def play
		puts "#{@name}'s PLAYLIST"
		@movies.each do |movie|
			puts movie
		end
	end
	def to_s
		@movies.size.to_s
	end
end

class Movie
	attr_accessor :title
	# attr_reader :title
	# attr_writer :title
	def initialize(ptitle, prank=0)
		@title = ptitle
		@rank = prank
	end
	def thumbs_up
		@rank += 1
	end
	def thumbs_down
		@rank -= 1
	end
	def to_s
		"#{@title} hat ein Ranking von #{@rank}"
	end
end

movie1 = Movie.new('Fringe - Grenzfälle des FBI',7)
movie2 = Movie.new('The Walking Dead',10)
movie3 = Movie.new('Black is the new Orange',8)
pl = Playlist.new("Horror")
pl.add_movie(movie1)
pl.add_movie(movie2)
pl.play

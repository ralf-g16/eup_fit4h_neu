class Movie
	

	def initialize(ptitle, prank=0)
		@title = ptitle.capitalize
		@rank = prank
	end

	def to_s
		"#{@title} hat ein Ranking von: #{@rank}."
	end

end

obj_movie1 = Movie.new('Ninjo', 4)
obj_movie2 = Movie.new('Ninja')
puts obj_movie1.to_s
puts obj_movie2.to_s

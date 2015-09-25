class Game

	def initialize(title)
		@title = title
		@players = []
	end
	def add_player(player)
		@players << player
	end
	def play
		count = @players.size
		puts "There are #{count} players in #{@title}"
		@players.each do |player|
			puts player
		end
		@players.each do |player|
			puts player.blam
			puts player.w00t
			puts player.w00t
			puts player
		end

	end
end

class Player

	def initialize(name,health=100)
		@name = name
		@health = health
	end

	attr_accessor :health
	# attr_reader :health
	# attr_writer :health

	

	def say_hello
	"Ich bin #{@name} mit einem Wert von #{@health}."
	end

	def to_s
	"I'm #{@name} with a health of #{@health} and a score of #{score}."
	end

	def score
		 @health + @name.size
	end

	def w00t
		@health = @health +10
		"#{@name} got w00ted to #{@health}."
	end

	def blam
		@health = @health -10
		"#{@name} got blamed to #{@health}."
		end	
end

player1 = Player.new("Moe",)
player2 = Player.new("Larry",60)
player3 = Player.new("Curly",125)

py = Game.new("FC Bayern")
py.add_player(player1)
py.add_player(player2)
py.add_player(player3)
py.play

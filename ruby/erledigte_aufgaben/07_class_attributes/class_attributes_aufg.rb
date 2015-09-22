class Player

	def initialize(name,health=100)
		@name = name
		@health = health
		@score = @health + @name.size
	end

	attr_reader :health
	attr_writer :health

	def say_hello
	"Ich bin #{@name} mit einem Wert von #{@health}."
	end
	def to_s
	"Ich bin #{@name} mit einem Wert von #{@health} und habe einen Score von: #{@score}."
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
player1 = Player.new("Alf",90)
player2 = Player.new("Ulf")
puts player1.say_hello
player3 = Player.new("Tom")
puts player3.w00t
puts player2.blam
puts player3
puts player1.health

#a

class Player

end

#-----------------------

#b

player1 = Player.new


#-----------------------

#c

class Player

	def initialize(name,health)
		@name = name
		@health = health
	end
end


#-----------------------

#d

player1 = Player.new("Hans",1)
puts player1

#-----------------------

#e

class Player

	def initialize(name,health=100)
		@name = name
		@health = health
	end
end

#??? -> initialize funktioniert nicht für Player 2 Gregor, es kommt nur die ID

#-----------------------

#f

player2 = Player.new("Gregor")
puts player2


#-----------------------

#g

class Player

	def initialize(name,health=100)
		@name = name
		@health = health
	end

	def say_hello
	"Ich bin #{@name} mit einem Wert von #{@health}."
	end
end

player1 = Player.new("Hans")
puts player1.say_hello
#-----------------------

#h

class Player

	def initialize(name,health=100)
		@name = name
		@health = health
	end

	def say_hello
	"Ich bin #{@name} mit einem Wert von #{@health}."
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

player1 = Player.new("Hans")
puts player1.w00t
puts player1.blam

#-----------------------

#i

class Player

	def initialize(name,health=100)
		@name = name
		@health = health
	end

	def say_hello
	"Ich bin #{@name} mit einem Wert von #{@health}."
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
players = "\t" + player1.say_hello + "\n\t" + player2.say_hello
puts players
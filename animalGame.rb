class Animal

	def initialize(name, health)
	      @name=name
	      @health=health
	end

	def hurt(hurted)

		@health -= hurted
		life()
	end


	def life()
		puts "#@name health is now at #@health "
	end

end

	class Dog < Animal
		def bite(object)
			object.hurt(10)
		end
	end


	class Cat < Animal
		def scratch(object)
			object.hurt(5)
		end
	end

mark = Dog.new("mark", 50)

kitty = Cat.new("kitty", 25)

mark.bite(kitty)
kitty.scratch(mark)

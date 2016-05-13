# base class
class Mammal
	attr_accessor :gender, :name, :age, :alive

	def initialize(gender, name, age, alive = true)
		@gender = gender
		@name = name
		@age = age
		@alive = alive
	end

	def speak
		raise 'You must implement this in a sub class'
	end

	def increment_age(age = 1)
		@age += age
	end

	def kill
		@alive = false if @alive  
	end

	def self.type_of_blood
		puts 'Mammals are warm blooded'
	end

end


# sub class
class Human < Mammal
	def initialize(gender, name, age, alive, hair_color)
		super(gender, name, age, alive)
		@hair_color = hair_color
	end

	def speak
		puts 'This is english...'
	end

end


# sub class
class Elephant < Mammal
	def initialize(gender, name, age, alive)
		super(gender, name, age, alive)
	end

	def speak
		puts 'Trumpeting...'
	end
end


# sub class
class Cat < Mammal
	def initialize(gender, name, age, alive, fur_color)
		super(gender, name, age, alive)
		@fur_color = fur_color	
	end

	def speak
		puts 'Meow...'
	end

end


jake = Human.new('Male', 'Jake', 26, true, 'Brown')
jake.speak
jax = Cat.new('Male', 'Jax', 2, true, 'Black & White')
jax.speak
dumbo = Elephant.new('Male', 'Dumbo', 3, true)
dumbo.speak

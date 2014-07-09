class Person
	@@people_count = 0

	def initialize(first, last)
		@first = first
		@last = last
		@id = @@people_count
		@@people_count += 1
	end

	def to_s
		"#{@last}, #{@first}"
	end
end

p = Person.new("John", "Doe")
puts p

class Friend < Person
	def initialize(first, last, nick)
		super(first, last)
		@nick = nick
	end

	def drink
		puts "Cheers from #{@nick}"
	end
	def to_s
		"#{super.to_s} a.k.a. #{@nick}"
	end
end

f = Friend.new("Jack", "Daniels", "Buddy")
puts f
f.drink

########## MODULES ##############
module M1
	def self.module_method(s)
		puts "Module method: #{s}"
	end
	def mixin
		puts "Value of a: #{@a}"
	end
end

M1.module_method("Hello!")

class X
	include M1
	def initialize
		@a = 4711
	end
end

x = X.new
x.mixin
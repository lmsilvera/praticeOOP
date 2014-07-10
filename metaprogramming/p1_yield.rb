class Person
	def initialize( name )
		@name = name
	end
	def do_width_name
		yield @name
	end
end

person = Person.new("Oscar")

person.do_width_name do |name|
	puts "Hey, his name is #{name}"
end
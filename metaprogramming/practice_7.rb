class TestClass
	puts "before definition, self: #{self}"
	def my_instance_method
		puts "my_instance_method, self: #{self}"
	end

	puts "after definition, self: #{self}"
end

TestClass.new.my_instance_method

class TestClass
	def self.my_class_method
		puts "my_class_method, self: #{self}"
	end
	my_class_method
end
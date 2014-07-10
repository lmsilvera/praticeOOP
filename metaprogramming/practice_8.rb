class Meta
	def initialize(value)
		@value = value
	end

	def self.add_multiplier(factor)
		define_method "times#{factor}" do
			@value * factor
		end
	end

	add_multiplier 5
end

Meta.new(3).times5

# Method adding method

module Multiplication
	module ClassMethods
		def new_class_m
			puts "new_clas_m - self: #{self}"
		end

		def add_multiplier(factor)
			define_method "times#{factor}" do
				@value * factor
			end
		end
	end

	def self.included(clazz)
		clazz.extend(ClassMethods)
	end
end

class MultiplyTest
	include Multiplication
	def initialize(value)
		@value = value
	end

	add_multiplier 3
end

p MultiplyTest.new(3).times3
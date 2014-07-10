module Mod
	include Math

	CONST = 1

	def meth
		# ...
	end
end

puts ""
puts "Mod.class: #{Mod.class}"
puts "Mod.constants: #{Mod.constants}"
puts "Mod.instance_methods: #{Mod.instance_methods}"
puts ""
puts "Module.constants.first(4): #{Module.constants.first(4)}"
puts "Module.constants.include?(:SEEK_SET): #{Module.constants.include?(:SEEK_SET)}"
class IO
	puts "Module.constants.include?(:SEEK_SET): #{Module.constants.include?(:SEEK_SET)}"
end
puts ""
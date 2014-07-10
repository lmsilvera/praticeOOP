####### Creating objects and classes by name #########
s = Kernel.const_get('String').new "Teststring"
s.class

Test = Class.new

Test.class_eval do
	def test1
		"test1"
	end
end

p Test.new.test1

Test.class_eval do
	define_method "test2" do
		"test2"
	end
end

p Test.new.test2

######## INIDIVIDUAL OBJECT METHOD #############
Test = Class.new
t1 = Test.new
t2 = Test.new
p t1.standard_method
p t2.standard_method

class << t1
	def object_method
		"object_method; self: #{self}"
	end
end
p t1.object_method
p t2.object_method
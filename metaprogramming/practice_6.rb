############# Classes & Contants ##############
cls = Class.new
cls.class_eval do
	define_method :test_method do
		"test_method"
	end
end

p cls.new.test_method
p cls
p SomeArbitraryConstant = cls
p cls
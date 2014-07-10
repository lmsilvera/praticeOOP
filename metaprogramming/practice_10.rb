module M1
	module M2
		$a = Module.nesting
	end
end
p $a
p $a[0].name
#Return the lsit od MODULES nested at the point of call
class Calculator

	attr_reader :num1, :num2, :result

	def add num1, num2
		@num1 = num1
		@num2 = num2
		@result = num1 + num2
	end

	def substract num1, num2
		@num1 = num1
		@num2 = num2
		@result = num1 - num2
	end

	def multiply num1, num2
		@num1 = num1
		@num2 = num2
		@result = num1 * num2
	end

	def divide num1, num2
		@num1 = num1
		@num2 = num2
		@result = num1 / num2
	end

end
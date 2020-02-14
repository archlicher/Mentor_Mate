
class Validations
	def validate(n)
		unless integer?(n) &&
			   between_2_and_10_000?(n) &&
			   odd?(n)
			puts 'Your input did not meet the criteria. Please try again.'
		else
			n
		end
	end

	def integer?(n)
		true if n.is_a? Integer
	end

	def between_2_and_10_000?(n)
		true if 2 < n && n < 10_000
	end

	def odd?(n)
		true if n.odd?
	end
end
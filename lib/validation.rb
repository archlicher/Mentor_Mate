
class Validations
	def validate(n)
		unless n.is_a?(Integer) && n > 2 && n < 10_000 && n.odd?
			puts 'Your input did not meet the criteria. Please try again.'
			exit
		end

		n
	end
end
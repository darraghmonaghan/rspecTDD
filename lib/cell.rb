

class Cell


	def initialize(a, b, c, d)
		@alive = true
	end

	def live!
		cell = Cell.new(1, 2, 3, 4)
	end

	def live?
		if (@alive == true)
			return true
		end
	end

	def die!
		@alive = false
	end

	def dead?
		@alive = false
		if @alive == false
			return true
		end
	end

	def toggle
		puts 'previous state: '+@alive.to_s
		if @alive == false
			@alive = true
			puts 'toggled state: '+@alive.to_s
			return true
		elsif @alive == true
			@alive = false
			puts 'toggled state: #{@alive}'
			return false
		end
	end

		
end
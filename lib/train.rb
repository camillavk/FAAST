class Train

	def initialize
		@carriages = []
	end

	def carriage_count
		@carriages.length
	end

	def dock(carriage)
		@carriages << carriage
	end

end
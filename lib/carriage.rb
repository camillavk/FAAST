class Carriage

	DEFAULT_CAPACITY = 40

	def initialize
		# @capacity = capacity
		@passenger = []
	end

	# def capacity
	# 	@capacity
	# end

	def board(passenger)
		@passenger << passenger
	end

	def disembark(passenger)
		@passenger.delete(passenger)
	end

	def passenger_count
		@passenger.count
	end

	# def full?
	# 	raise "Sorry, this carriage is already full" if passenger_count == DEFAULT_CAPACITY
	# end

end

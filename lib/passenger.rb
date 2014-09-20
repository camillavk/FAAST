class Passenger

	def in_station? 
		!@station.nil?
	end

	def touch_in(station)
		@station = station
	end

	def touch_out(station)
		@station = nil
	end

	def in_carriage?
		!@carriage.nil?
	end

	def board(carriage)
		@carriage = carriage
	end

	def disembark(carriage)
		@carriage = nil
	end

end
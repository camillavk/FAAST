class Station

def initialize
		@trains = []
	end

	def train_count
		@trains.length
	end

	def park(train)
		@trains << train
	end

	def release(train)
		@trains.pop
	end

	def transfer(station)
		@trains.each do |train|
			station.park(release(train))
		end
	end

end
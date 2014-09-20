require 'station'
require 'train'

describe Station do

let(:station) { Station.new }
let(:train) { Train.new }
let(:carriage) { double :carriage }

	it "should be able to park Trains" do
		5.times { station.park(train) }
		expect(station.train_count).to eq(5)
	end

			# it "should be able to transport Carriages from Station to Train" do
	# 		# allow(station1).to receive(:dock).and_return(true)
	# 		# allow(station1).to receive(:transfer).and_return(true)
	# 		# allow(station1).to receive(:carriage_count).and_return(0)
	# 		5.times { station.dock(carriage) }
	# 		station.transfer(train)
	# 		expect(station.carriage_count).to eq(0)
	# 		expect(train.carriage_count).to eq(5)
	# 	end

end
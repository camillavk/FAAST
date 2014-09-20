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

	it "should be able to transport trains from one station to another" do
		old_street = Station.new
		london_bridge = Station.new
		old_street.park(train)
		expect(old_street.train_count).to eq(1)
		old_street.transfer(london_bridge)
		expect(old_street.train_count).to eq(0)
		expect(london_bridge.train_count).to eq(1)
	end

end
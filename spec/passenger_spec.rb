require 'passenger'

describe Passenger do

let (:passenger) { Passenger.new }
let (:station) { double :station }
let (:carriage) { double :carriage }


	it "should be able to touch in at a station" do
		expect(passenger.in_station?).to eq(false)
		passenger.touch_in(station)
		expect(passenger.in_station?).to eq(true)
	end

	it "should be able to touch out at a Station" do
		passenger.touch_in(station)
		expect(passenger.in_station?).to eq(true)
		passenger.touch_out(station)
		expect(passenger.in_station?).to eq(false)
	end

	it "should be able to board a Carriage" do
		expect(passenger.in_carriage?).to eq(false)
		passenger.board(carriage)
		expect(passenger.in_carriage?).to eq(true)
	end

end
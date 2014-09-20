require 'passenger'
require 'station'
require 'carriage'

describe Passenger do

let (:passenger) { Passenger.new }
let (:station) { Station.new }
let (:carriage) { Carriage.new }


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

	it "should be able to disembark from a Carriage" do
		passenger.board(carriage)
		expect(passenger.in_carriage?).to eq(true)
		passenger.disembark(carriage)
		expect(passenger.in_carriage?).to eq(false)
	end

end
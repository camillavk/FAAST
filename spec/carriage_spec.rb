require 'carriage'
require 'passenger'

describe Carriage do

let (:carriage) { Carriage.new }
let (:passenger) { Passenger.new }

	it "should be able to hold Passengers" do
		2.times do
			passenger = Passenger.new
			carriage.board(passenger)
		end
		expect(carriage.passenger_count).to eq(2)
	end

	it "should be able to accept a Passenger" do
		expect(passenger.in_carriage?).to eq(false)
		2.times { passenger.board(carriage) }
		2.times { carriage.board(passenger) }
		expect(passenger.in_carriage?).to eq(true)
		expect(carriage.passenger_count).to eq(2)
	end

	it "should be able to disembark a Passenger" do
		passenger.board(carriage)
		carriage.board(passenger)
		expect(passenger.in_carriage?).to eq(true)
		expect(carriage.passenger_count).to eq(1)
		passenger.disembark(carriage)
		carriage.disembark(passenger)
		expect(passenger.in_carriage?).to eq(false)
		expect(carriage.passenger_count).to eq(0)
		end

	# # it "should reject passengers if it is full" do
	# # 	40.times { passenger.board(carriage) }
	# 	expect(carriage.passenger_count).to eq(40)
	# 	# expect(lambda {carriage.full?}).to raise_error(RuntimeError)
	# end

end

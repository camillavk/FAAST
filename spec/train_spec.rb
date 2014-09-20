require 'train'

describe Train do

let (:train) { Train.new }
let (:carriage) { double :carriage }
let (:station1) { double :station1 }
let (:station2) { double :station2 }

	it "should be able to dock carriages" do
		expect(train.carriage_count).to eq(0)
		5.times { train.dock(carriage) }
		expect(train.carriage_count).to eq(5)
	end

end
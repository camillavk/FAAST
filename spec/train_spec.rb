require 'train'

describe Train do

let (:train) { Train.new }
let (:carriage) { double :carriage }

it "should be able to dock carriages" do
		5.times { train.dock(carriage) }
		expect(train.carriage_count).to eq(5)
	end

end
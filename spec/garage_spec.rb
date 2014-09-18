require './lib/garage'

describe Garage do

let (:bike) { double :bike, :fix! => true } # Here we are telling rspec that the fix! method doesn't really exist but toe keep going anyway
let (:garage) { Garage.new }

	it 'can receive bikes' do
		garage.dock(bike)
		expect(garage.bikes).to eq [bike]
	end

	it 'can release bikes' do
		garage.dock(bike)
		garage.release(bike)
		expect(garage.bikes).to eq []
	end

	it 'can fix bikes' do
		expect(bike).to receive(:fix!)
		garage.dock(bike)
	end
end
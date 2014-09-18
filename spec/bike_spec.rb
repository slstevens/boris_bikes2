require './lib/bike'

describe Bike do
	it 'should be breakable' do
		bike = Bike.new
		expect(bike).to receive(:break!)
		bike.break!
	end

	it 'can be fixed' do
		bike = Bike.new
		expect(bike).to receive(:fix!)
		bike.fix!
	end
end
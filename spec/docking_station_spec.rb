require './lib/docking_station'

describe DockingStation do

	let (:bike) { double :bike }
	let (:station) { DockingStation.new }
	
	it "should dock bikes" do
		station.dock(bike)
		expect(station.bikes).to eq [bike]
	end

	it "should release bikes" do
		station.dock(bike)
		station.release(bike)
		expect(station.bikes).to eq []
	end
end

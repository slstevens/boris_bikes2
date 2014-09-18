require './lib/bike_container.rb'

describe BikeContainer do

	let (:bike) { double :bike }
	let (:broken_bike) { double :broken_bike }
	let (:holder) { BikeContainer.new }

	it "should dock available bikes" do
		bike = double :bike
		holder = BikeContainer.new
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end

	it "should dock broken bikes" do #this is a redundant test (i guess it makes you define what a broken bike is)
		broken_bike = double :broken_bike 
		holder = BikeContainer.new
		expect(holder.bike_count).to eq(0)
		holder.dock(broken_bike)
		expect(holder.bike_count).to eq(1)
	end

	it "should release available bikes" do #why doesn't bike_count method work here
		bike = double :bike
		holder = BikeContainer.new
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
		holder.release(bike)
		expect(holder.bike_count).to eq(0)
	end

	it "should release broken bikes" do #why doesn't bike_count method work here
		broken_bike = double :broken_bike
		holder = BikeContainer.new
		holder.dock(broken_bike)
		expect(holder.bike_count).to eq(1)
		holder.release(broken_bike)
		expect(holder.bike_count).to eq(0)
	end

	it "should know when it's full" do


	end

end

# 	# it "should know when it's empty" do

# 	# it "should not dock a bike if it's full" do

# 	# it "should not release bikes when it's empty" do

# 	# it "should know what bikes it contains" do

# 	# it "should also list available bikes" do

# 	# it "should also list broken bikes"


# 	# it "should accept a bike" do
# 	# 	expect(holder.bike_count).to eq(0)
# 	# 	holder.dock(bike)
# 	# 	expect(holder.bike_count).to eq(1)
# 	# end

# 	# it "should release an available bike" do
# 	# 	holder.dock(bike)
# 	# 	holder.release_available
# 	# 	expect(holder.bike_count).to eq(0)
# 	# end

# 	# it "should release a broken bike" do
# 	# 	holder.dock(bike)
# 	# 	holder.release_broken
# 	# 	expect(holder.broken_bikes).to eq([])
# 	# end

# 	# it "should know when it's full" do
# 	# 	expect(holder).not_to be_full
# 	# 	fill_holder(holder)
# 	# 	expect(holder).to be_full
# 	# end

# 	# it "should not accept a bike if it's full" do
# 	# 	fill_holder(holder)
# 	# 	expect(lambda { holder.dock(bike) }).to raise_error(RuntimeError)
# 	# end

# 	# it "should provide the list of available bikes" do
# 	# 	available_bike, broken_bike = Bike.new, Bike.new
# 	# 	broken_bike.break!
# 	# 	holder.dock(available_bike)
# 	# 	holder.dock(broken_bike)
# 	# 	expect(holder.available_bikes).to eq([available_bike])
# 	# end	

# 	# it "should not release an available bike that's not there" do
# 	# 	expect(holder.available_bikes).to eq([])
# 	# 	expect{ holder.release_available }.to raise_error(RuntimeError)
# 	# end

# 	# it "should not release a broken bike that's not there" do
# 	# 	expect(holder.broken_bikes).to eq([])
# 	# 	expect{ holder.release_broken }.to raise_error(RuntimeError)
# 	# end
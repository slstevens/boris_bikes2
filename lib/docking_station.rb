class DockingStation

	attr_accessor :bikes

	def initialize
		@bikes = []
	end

	def dock(bike)
		@bikes << bike
	end

	def release(bike)
		@bikes.pop
	end
end
require_relative 'bike'

class DockingStation
	DEFAULT_CAPACITY = 20

	attr_reader :capacity

	def initialize
		@bikes = []
		@broken=[]
		@capacity = DEFAULT_CAPACITY
	end

	def release_bike
		fail 'No bikes available' if empty? || bikes.last.working? == false
		bikes.pop
	end

	def dock(bike)
		fail 'Docking station full' if full?
		bikes << bike
		return nil
	end

	def capacity=(new_cap)
		capacity = new_cap
	end

	def list_broken_bikes
		@bikes.each {|b| @broken<<b if !b.working?}
		@broken
	end

	private

	attr_reader :bikes

	def full?
		bikes.count >= capacity
	end

	def empty?
		bikes == []
	end
end

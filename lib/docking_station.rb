require_relative 'bike'

class DockingStation
	DEFAULT_CAPACITY = 20

	attr_reader :capacity

	attr_reader :bikes

	def initialize
		@bikes = []

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
		broken=[]
		@bikes.each {|b| broken<<b if !b.working?}
		broken
	end

	def remove_broken_bikes
		broken_bikes = self.list_broken_bikes
		@bikes = @bikes - broken_bikes
		broken_bikes
	end



	private


	def full?
		bikes.count >= capacity
	end

	def empty?
		bikes == []
	end
end

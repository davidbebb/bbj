
require_relative 'bike'
require_relative 'docking_station'

class Van

  def get_broken_bikes dock
	   @broken_bikes = dock.list_broken_bikes
	end



end

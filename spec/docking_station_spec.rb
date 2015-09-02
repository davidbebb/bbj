
require "docking_station"

describe DockingStation do
	it {should respond_to (:release_bike)}
	
end

describe DockingStation do 
	it "Docking station gets a working bike" do
		bike = DockingStation.new.release_bike
		bike.class.should == Bike
		bike.should be_working
	end
 
end 


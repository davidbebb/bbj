#!/usr/bin/env ruby


require "./lib/van.rb"
require "./lib/docking_station.rb"
require "./lib/bike.rb"


ds = DockingStation.new

bike_1=Bike.new
bike_3=Bike.new
bike_2=Bike.new
bike_4=Bike.new
bike_5=Bike.new
bike_6=Bike.new

bike_2.report_broken
bike_6.report_broken

ds.dock(bike_1)
# ds.dock(bike_2)
# ds.dock(bike_3)
# ds.dock(bike_4)
# ds.dock(bike_5)
# ds.dock(bike_6)
ds.dock(bike_1)
bike_1.report_broken

p ds.bikes

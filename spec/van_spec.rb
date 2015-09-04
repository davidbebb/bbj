
require "van"

describe Van  do

  it 'responds to get_broken_bikes' do
    expect(subject).to respond_to(:get_broken_bikes).with(1).argument
  end

  it 'gets broken bikes from dock' do
    bike_1 = double(:bike)#, working?:false)
#    bike_2 = double(:bike, working?:true)
    bike_3 = double(:bike)#, working?:false)
#    bike_4 = double(:bike, working?:true)
    dock = double(:ds, list_broken_bikes:[bike_1,bike_3])
    expect(subject.get_broken_bikes(dock)).to eq([bike_1, bike_3])



  end



end

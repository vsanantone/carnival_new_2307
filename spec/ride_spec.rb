require './lib/visitor'
require './lib/ride'

RSpec.describe Ride do
  before(:each) do
    @ride1 = Ride.new({ name: 'Carousel', min_height: 24, 
    admission_fee: 1, excitement: :gentle })
  end

  describe "#initialize" do
    it "exist" do
      expect(@ride1).to be_a Ride
     
    end
  end

  describe "attributes" do
    it "has readable attributes" do
      expect(@ride1.name).to eq("Carousel")
      expect(@ride1.min_height).to eq(24)
      expect(@ride1.admission_fee).to eq(1)
      expect(@ride1.excitement).to eq(:gentle)
      expect(@ride1.total_revenue).to eq(0)
    end
  end
  
end
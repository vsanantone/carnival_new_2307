class Ride
  attr_reader :name,
              :height,
              :min_height,
              :admission_fee,
              :excitement,
              :total_revenue
              

  def initialize(data)
    @name           = data[:name]
    @min_height     = data[:min_height]
    @admission_fee  = data[:admission_fee]
    @excitement     = data[:excitement]
    @total_revenue  = 0
  end
   
end
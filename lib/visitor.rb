class Visitor
  attr_reader :name,
              :height,
              :spending_money,
              :preferences

  def initialize(name, height, spending_money)
    @name             = name
    @height           = height
    @spending_money   = spending_money
    @preferences      = []
  end

  def spending_money
    @spending_money.gsub!(/[$]/, '').to_i
  end

  def add_preference(preference) 
    @preferences << preference
  end

  def tall_enough?(height) 
    if @height >= height
      true
    else
      false
    end
  end
end
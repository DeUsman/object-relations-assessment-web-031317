class Restaurant
  attr_accessor :name, :reviews
  @@ALL = []

  def initialize(name)
    @name = name
    @reviews = []
    @@ALL.push(self)
  end

  def self.all
  	return @@ALL
  end

  def self.find_by_name(name)
  	@@ALL.find do |restaurant|
    restaurant.name == name
	end
  end

  def reviews
  	return self.reviews
  end

  def customers
  	self.reviews
  end


end

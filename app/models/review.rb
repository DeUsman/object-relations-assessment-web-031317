class Review < Restaurant
	@@ALL = []
	attr_accessor :customer, :restauarnt

	def initialize(customer, restaurant)
		@customer = customer
		@restaurant = restaurant
	end

	def self.all
		return @@ALL
	end

	def customer
		self.customer
	end

	def restaurant 
		self.restaurant
  	end

end


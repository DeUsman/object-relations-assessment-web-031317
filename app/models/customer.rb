class Customer < Review
  attr_accessor :first_name, :last_name, :reviews
  @@ALL = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    @@ALL.push(self)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all 
  	return @@ALL
  end


  def self.find_by_name(name)
  	a = name.split(" ")
  	@@ALL.find do |customer|
  		customer.first_name == a.first && customer.last_name == a.last
  	end
  end


  def self.find_all_by_first_name(name)
  	@@ALL.select do |customer|
  		customer.first_name == name
  	end
  end

  def self.all_names 
  	full_name = []
  	@@ALL.each do |customer|
  		full_name.push("#{customer.first_name} #{customer.last_name}")
  	end
  	full_name
  end

  def add_review(restaurant, content)
  	content = Review.new(self, restaurant)
  	self.reviews.push(content)
  	restaurant.reviews.push(content)
  end


end

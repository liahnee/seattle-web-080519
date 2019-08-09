require "pry"
require "require_all"
require_all '../05-code-challenge-review'

class Musical
  attr_accessor :name
  attr_reader :setting_city

  @@all = []

  def initialize(name, setting_city)
    @name = name
    @setting_city = setting_city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_introductions
    # use name , setting_city
    # loops
    # parameters
    @@all.each do |musical_object|
      puts  "Welcome, this is #{musical_object.name}, set in #{musical_object.setting_city}"
    end
  end

  def perform_in_theater(theater, date)
    Performance.new(date, self, theater)
  end

  def performances
    # binding.pry
    Performance.all.collect do |per| 
      if per.musical == self 
        per 
      end
    end
  end
  # binding.pry

  def theaters
    the=[]
    Performance.all.select do |per|
      if per.musical == self
        the << per.theater
      end  
    end
    return the
  end
# binding.pry
end

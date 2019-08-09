class Theater

  attr_reader :title, :city

  @@all = [ ]

  def initialize(title, city)
    @title = title
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def performances
    Performance.all.select do |per|
      if per.theater == self
        per
      end
    end 
  end 

  def musicals
    the = []
    Performance.all.select do |per|
      if per.theater == self
        the << per.musical
      end
    end
    return the
  end

end

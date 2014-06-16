class Hand

  attr_accessor :name, :duration

  def initialize(name, duration)
    @name = name
    @duration = duration
  end

end

Band = Struct.new(:name, :duration)


band = Band.new("the beatles")
puts band
puts "band.duration = #{band.duration}"

puts "--------------------------------"

hand = Hand.new("the beatles")
puts hand

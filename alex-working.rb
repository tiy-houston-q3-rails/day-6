class Concert

  attr_accessor :first, :second, :headliner

end

class Band

  attr_accessor :name, :duration

  def initialize(name, duration)
    @name = name
    @duration = duration
  end

end

band1 = Band.new "The Openers", 30
band2 = Band.new "Mad Plaid", 35
band3 = Band.new "Consciousness Accordion", 40
band4 = Band.new "Closing Bottles", 25
band5 = Band.new @name, @duration

concert = Concert.new

concert.headliner = band5

@openers = [band1, band2, band3, band4]

puts "\n"
puts "So which band is headlining today?"
answer = gets.chomp.strip.downcase.split.map(&:capitalize).join(" ")
band5.name = answer

puts "\n"
puts "How many minutes is their set?"
answer = gets.chomp.strip
band5.duration = answer

puts "\n"
puts "We only have time for two of these bands to perform before the headliner:"

puts @openers.map(&:name).join(', ')
puts "\n"

until concert.first do
  puts "Which opener is up first?"
  answer = gets.chomp.strip.downcase.split.map(&:capitalize).join(" ")

  band = @openers.find do |band|
    band.name[/#{answer}/]
  end

  concert.first = band

  unless concert.first
    puts "\n"
    puts "That band isn't available to open. Check the list."
  end
end

puts "\n"

until concert.second do
  puts "Which opener is up second?"
  answer = gets.chomp.strip.downcase.split.map(&:capitalize).join(" ")

  band = @openers.find do |band|
    band.name[/#{answer}/]
  end

  if band == concert.first
    puts "\n"
    puts "They are on stage first. Check the list."
  elsif !band
    puts "\n"
    puts "That band isn't available to open. Check the list."
  else
    concert.second = band
  end

end

puts "\n"

puts "Cool, so we have #{concert.first.name} going on first for
#{concert.first.duration} minutes, followed by #{concert.second.name} playing
for #{concert.second.duration} minutes, and the headliner is #{concert.headliner.name},
with a set time of #{concert.headliner.duration} minutes."



begin
  puts "\n"
  puts "Enter 'PLAY' for a neat list of performers!"
  input = gets.chomp.strip.upcase

  if input != "PLAY"
    puts ":("
  elsif input == "PLAY"
    puts "\n"
    puts "In order of appearance"
    puts "----------------------"
    puts "Openers:"
    puts "For #{concert.first.duration} minutes - #{concert.first.name}"
    puts "For #{concert.second.duration} minutes - #{concert.second.name}"
    puts "----------------------"
    puts "Headliner:"
    puts "For #{concert.headliner.duration} minutes - #{concert.headliner.name}"
    puts "\n"
  end
end while input != "PLAY"

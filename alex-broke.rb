class Concert

  attr_accessor :first, :second, :headliner, :openers

  def initialize
    band1 = Band.new "The Openers", 30
    band2 = Band.new "Mad Plaid", 35
    band3 = Band.new "Consciousness Accordion", 40
    band4 = Band.new "Closing Bottles", 25

    @openers = [band1, band2, band3, band4]
  end

  def ask_for_bands
    @headliner = find_headliner()
    @first = find_first_opener()
    @second = find_second_opener()
  end

  def find_headliner
    puts "\n"
    puts "So which band is headlining today?"
    band5_name = gets.chomp.strip.downcase.split.map(&:capitalize).join(" ")

    puts "\n"
    puts "How many minutes is their set?"
    band5_duration = gets.chomp.strip

    Band.new band5_name, band5_duration
  end

  def find_first_opener

    first_concert = false

    puts "\n"
    puts "We only have time for two of these bands to perform before the headliner:"

    puts openers.map(&:name).join(', ')
    puts "\n"

    until first_concert do
      puts "Which opener is up first?"
      answer = gets.chomp.strip.downcase

      # band = openers.find do |band|
      #   band.name[/#{answer}/i]
      # end

      band = openers.find do |band|
        band.name.downcase == answer
      end

      first_concert = band

      unless first_concert
        puts "\n"
        puts "That band isn't available to open. Check the list."
      end
    end

    puts "\n"

    return first_concert

  end

  def find_second_opener

    second_band = false
    until second_band do
      puts "Which opener is up second?"
      answer = gets.chomp.strip.downcase.split.map(&:capitalize).join(" ")

      band = openers.find do |band|
        band.name[/#{answer}/]
      end

      if band == second_band
        puts "\n"
        puts "They are on stage first. Check the list."
      elsif !band
        puts "\n"
        puts "That band isn't available to open. Check the list."
      else
        second_band = band
      end
    end
    puts "\n"
    return second_band
  end


end

class Band

  attr_accessor :name, :duration

  def initialize(name, duration)
    @name = name
    @duration = duration
  end
end



def main

  @concert = Concert.new
  @concert.ask_for_bands

  print_confirmation_for @concert
  play_lineup_for @concert

end





def print_confirmation_for concert

  puts "Cool, so we have #{concert.first.name} going on first for
  #{concert.first.duration} minutes, followed by #{concert.second.name} playing
  for #{concert.second.duration} minutes, and the headliner is #{concert.headliner.name},
  with a set time of #{concert.headliner.duration} minutes."
end

def play_lineup_for concert
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
end

main()

# class Band
#
#   attr_accessor :name, :duration
#
#
#   def initialize(name, duration)
#     @name = name
#     @duration = duration
#   end
#
# end
#
# Band.new "the beatles",90
#
# Band.new( {name: "the beatles", duration: 90} )
#
#
# params = {name: "the beatles", duration: 90}
# Band.new(params)

# module SuperAwesomeInit
#
# end

class Band
  attr_accessor :name, :duration

  def initialize(params)
    params.each do |key, value|
      #name= "the beatles"
      self.send("#{key}=".to_sym, value)
    end
  end

  def sell_merchandise
    puts "SOLD YO"
  end

  def buy_merchandise
    puts "BUY IT!!!!"
  end

end


# puts "Set name: what name giveth this bandeth"
# band = Band.new name: ""
# the_answer = gets.chomp.strip
#
# band.name = the_answer
# band.send("name=".to_sym, the_answer)

# puts "Sell or buy?"
#
# answer = gets.chomp.strip
band = Band.new name: "the beatles", duration: 50, cool: true
puts band.inspect

#
# method_name = "#{answer}_merchandise"
# puts "method_name -> #{method_name}"
# method_name_as_symbol = method_name.to_sym
#
# puts "method_name_as_symbol -> #{method_name_as_symbol}"
# band.send(method_name_as_symbol)
#
# .send(method)
# =>
# band.method


# band = Band.new
# band.sell_merchandise
# band.send(:sell_merchandise)
# band.send("sell_merchandise".to_sym)
#
# [band].map(&:sell_merchandise)

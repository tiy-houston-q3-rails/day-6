class Concert

  Band = Struct.new(:name, :duration)

  def initialize
    band1 = Band.new "The Openers", 30
    band2 = Band.new "Mad Plaid", 35
    band3 = Band.new "Consciousness Accordion", 40
    band4 = Band.new "Closing Bottles", 25

    @openers = [band1, band2, band3, band4]
  end
end

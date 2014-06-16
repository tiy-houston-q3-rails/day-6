class Yo
  def cool=(other)
    @cool = other
  end
end

yo = Yo.new

# in english
#if yo has a method of cool=
if yo.respond_to? :cool=
  yo.cool = true
end


puts yo.inspect

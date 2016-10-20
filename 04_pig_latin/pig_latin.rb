require 'pry'

def translate(str)
  ary = str.split

  ary.collect do |elem|
    if /^[aeiou]+/.match(elem)
      return elem = elem + "ay"
    elsif /^[^aeiou]+/.match(elem)
      binding.pry
      a = /^[^aeiou]+/.match(elem).to_s
      return elem = elem[a.length..-1] + a + "ay"
    end
  end

  ary.join(" ")
end

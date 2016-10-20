require 'pry'

def translate(str)
  ary = str.split
  ary_b = []

  ary.collect do |elem|
    if /^[aeiou]+/.match(elem)
      ary_b << elem = elem + "ay"
    else
      a = /^[^aeiou]+[q]?[u]?/.match(elem).to_s
      ary_b << elem = elem[a.length..-1] + a + "ay"
    end
  end

  ary_b.join(" ")
end

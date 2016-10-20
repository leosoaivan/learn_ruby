def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num = 2)
  ("#{str} " * num).rstrip
end

def start_of_word(str, num)
  str[0..num - 1]
end

def first_word(str)
  str.split(" ").shift
end

def titleize(str)
  little = ["and", "the", "over"]
  ary = str.split
  ary.each { |elem| elem.gsub!(/^\w+/, &:capitalize) unless little.include?(elem) && elem != ary[0] }
  str = ary.join(" ")
end

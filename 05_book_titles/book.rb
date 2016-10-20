class Book

  def title
    @title
  end

  def title=(str)
    conjunctions = %w[and or but]
    prepositions = %w[in of the a an]

    ary = str.split

    ary.collect do |x|
      x.gsub!(/^\w+/, &:capitalize) unless conjunctions.include?(x) || prepositions.include?(x)
    end

    ary[0].capitalize!
    @title = ary.join(" ")
  end

end

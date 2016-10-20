class Timer

  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=(n)
    @seconds = n
  end

  def time_string
    hours = @seconds/3600
    mins = (@seconds - (hours * 3600))/60
    @seconds = (@seconds % 60)

    "#{hours.to_s.rjust(2, '0')}:#{mins.to_s.rjust(2, '0')}:#{@seconds.to_s.rjust(2, '0')}"
  end
end

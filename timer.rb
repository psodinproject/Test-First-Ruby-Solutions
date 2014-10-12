class Timer
  def initialize(seconds=0)
    @seconds = seconds
  end 

  def seconds
    @seconds
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds - (3600 * hours)) / 60
    seconds = (@seconds - (3600 * hours) - (60 * minutes))
    if hours < 10
      hours_string = "0#{hours}"
    else
      hours_string = "#{hours}"
    end 
    if minutes < 10
      minutes_string = "0#{minutes}"
    else
      minutes_string = "#{minutes}"
    end 
    if seconds < 10
      seconds_string = "0#{seconds}"
    else
      seconds_string = "#{seconds}"
    end 
    "#{hours_string}:#{minutes_string}:#{seconds_string}"
  end
end

class Timer
  #write your code here
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds= seconds 
    @seconds = seconds
  end

  def time_string
    stringify(@seconds)
  end

  def stringify num
    h = 3600
    m = 60
    s = 1
    result = []

    hours = num / h
    if hours <= 0
      hr = "00"
      result << hr 
    elsif hours > 0
      if hours < 10
        hr = "0" + hours.to_s
      else
        hr = hours.to_s
      end
      result << hr 
    end 

    minutes = (num - (hours * h)) / m 
    if minutes <= 0
      min = "00"
      result << min 
    elsif minutes > 0
      if minutes < 10
        min = "0" + minutes.to_s
      else 
        min = minutes.to_s
      end
      result << min 
    end

    seconds = (num - (hours * h) - (minutes * m))
    if seconds <= 0
      sec = "00"
      result << sec 
    elsif seconds > 0
      if seconds < 10
        sec = "0" + seconds.to_s
      else
        sec = seconds.to_s
      end
      result << sec 
    end

    result.join(':')
  end
end
















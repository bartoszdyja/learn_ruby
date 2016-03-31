class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    hours = seconds/3600
    mins = seconds/60 - 60*hours
    sec = seconds%60
    "%02d:%02d:%02d" % [hours, mins, sec]
  end
end

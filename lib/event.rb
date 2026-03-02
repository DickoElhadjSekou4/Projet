require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title = "", attendees = [])
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
  end

  def postpone_24h
    @start_date += 24*3600
  end

  def end_date
    @start_date + (@duration * 60)
  end

  def is_past?
    Time.now > end_date
  end

  def is_future?
    Time.now < @start_date
  end

  def is_soon?
    time_diff = @start_date - Time.now
    time_diff > 0 && time_diff <= 30*60
  end

  def to_s
    "Titre : #{@title}\nDate de début : #{@start_date}\nDurée : #{@duration} minutes\nInvités : #{@attendees.join(', ')}"
  end
end

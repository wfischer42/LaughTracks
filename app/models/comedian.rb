# require 'active_record'

class Comedian < ActiveRecord::Base
  has_many :specials
  validates_presence_of :name, :birthday_timestamp

  def self.average_age
    seconds_per_year = 31557600
    today_timestamp = Date.today.to_time.to_i
    seconds_elapsed = (today_timestamp - average(:birthday_timestamp)).to_i
    return seconds_elapsed / seconds_per_year
  end

  def age
    seconds_per_year = 31557600
    today_timestamp = Date.today.to_time.to_i
    seconds_elapsed = today_timestamp - birthday_timestamp
    return seconds_elapsed / seconds_per_year
  end
end

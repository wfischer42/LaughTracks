class Comedian < ActiveRecord::Base
  has_many :specials
  validates_presence_of :name, :birthday_timestamp

  def birthday
    Time.at(birthday_timestamp).to_date
  end

  def age
    seconds_per_year = 31557600
    today_timestamp = Date.today.to_time.to_i
    seconds_elapsed = today_timestamp - birthday_timestamp
    return seconds_elapsed / seconds_per_year
  end

  # TODO: Create custom validation for birth date (date object format)
end

class Comedian < ActiveRecord::Base
  validates_presence_of :name, :birth_date
  # TODO: Create custom validation for birth date (date object format)
  
end

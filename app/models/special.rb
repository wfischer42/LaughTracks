class Special < ActiveRecord::Base
  belongs_to :comedian
  validates_presence_of :title
end

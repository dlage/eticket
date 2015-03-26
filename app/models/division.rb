class Division < ActiveRecord::Base
  belongs_to :event
  has_many :allotments
end

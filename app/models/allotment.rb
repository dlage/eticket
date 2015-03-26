class Allotment < ActiveRecord::Base
  belongs_to :division
  has_many :allotment_ticket_types
end

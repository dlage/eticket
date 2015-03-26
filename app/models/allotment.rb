class Allotment < ActiveRecord::Base
  belongs_to :division
  has_many :allotment_ticket_types
  has_and_belongs_to_many :invitation_groups
end

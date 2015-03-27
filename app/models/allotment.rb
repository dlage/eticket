class Allotment < ActiveRecord::Base
  belongs_to :division
  delegate :event, to: :division
  has_many :allotment_ticket_types
  has_and_belongs_to_many :invitation_groups
  has_many :ticket_types, through: :allotment_ticket_types
  accepts_nested_attributes_for :allotment_ticket_types
end

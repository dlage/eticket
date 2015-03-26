class TicketType < ActiveRecord::Base
  belongs_to :event
  has_many :allotment_ticket_types
end

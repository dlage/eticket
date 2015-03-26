class AllotmentTicketType < ActiveRecord::Base
  belongs_to :ticket_type
  belongs_to :allotment
end

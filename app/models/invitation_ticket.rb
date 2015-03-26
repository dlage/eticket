class InvitationTicket < ActiveRecord::Base
  belongs_to :ticket_type
  belongs_to :invitation
  belongs_to :allotment
end

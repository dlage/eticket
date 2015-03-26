class Invitation < ActiveRecord::Base
  belongs_to :invitation_group
  has_many :invitation_tickets
end

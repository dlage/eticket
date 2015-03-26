class InvitationGroup < ActiveRecord::Base
  belongs_to :division
  has_and_belongs_to_many :allotments
end

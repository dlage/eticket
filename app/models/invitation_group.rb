class InvitationGroup < ActiveRecord::Base
  belongs_to :division
  has_and_belongs_to_many :allotments
  accepts_nested_attributes_for :allotments
  has_many :invitations
end

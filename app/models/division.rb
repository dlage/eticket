class Division < ActiveRecord::Base
  belongs_to :event
  has_many :allotments
  has_many :invitation_groups
end

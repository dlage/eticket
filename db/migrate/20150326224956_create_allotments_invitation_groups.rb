class CreateAllotmentsInvitationGroups < ActiveRecord::Migration
  def change
    create_table :allotments_invitation_groups do |t|
      t.belongs_to :allotment, index: true
      t.belongs_to :invitation_group, index: true
    end
  end
end

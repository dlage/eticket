class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.text :notes
      t.references :invitation_group, index: true

      t.timestamps
    end
  end
end

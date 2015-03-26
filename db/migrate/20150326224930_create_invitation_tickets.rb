class CreateInvitationTickets < ActiveRecord::Migration
  def change
    create_table :invitation_tickets do |t|
      t.references :ticket_type, index: true
      t.references :invitation, index: true
      t.integer :quantity_delivered
      t.integer :quantity_assigned
      t.references :allotment, index: true

      t.timestamps
    end
  end
end

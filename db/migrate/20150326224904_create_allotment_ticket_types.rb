class CreateAllotmentTicketTypes < ActiveRecord::Migration
  def change
    create_table :allotment_ticket_types do |t|
      t.references :ticket_type, index: true
      t.references :allotment, index: true
      t.integer :quantity
      t.integer :quantity_commited

      t.timestamps
    end
  end
end

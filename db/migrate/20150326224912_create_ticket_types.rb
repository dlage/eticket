class CreateTicketTypes < ActiveRecord::Migration
  def change
    create_table :ticket_types do |t|
      t.references :event, index: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

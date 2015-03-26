class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :name
      t.text :description
      t.references :event, index: true

      t.timestamps
    end
  end
end

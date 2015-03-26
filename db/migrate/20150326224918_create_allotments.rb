class CreateAllotments < ActiveRecord::Migration
  def change
    create_table :allotments do |t|
      t.string :name
      t.text :description
      t.references :division, index: true

      t.timestamps
    end
  end
end

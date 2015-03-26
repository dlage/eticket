class CreateInvitationGroups < ActiveRecord::Migration
  def change
    create_table :invitation_groups do |t|
      t.string :title
      t.text :description
      t.references :division, index: true

      t.timestamps
    end
  end
end

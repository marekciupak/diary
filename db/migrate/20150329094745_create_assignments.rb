class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :division, index: true
      t.references :subject, index: true

      t.timestamps null: false
    end
    add_foreign_key :assignments, :divisions
    add_foreign_key :assignments, :subjects
  end
end

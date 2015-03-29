class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.integer :year
      t.string :letter

      t.timestamps null: false
    end
  end
end

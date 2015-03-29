class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :grade
      t.references :user, index: true
      t.references :subject, index: true

      t.timestamps null: false
    end
    add_foreign_key :grades, :users
    add_foreign_key :grades, :subjects
  end
end

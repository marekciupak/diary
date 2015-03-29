class AddDivisionRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :division, index: true
    add_foreign_key :users, :divisions
  end
end

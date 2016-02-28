class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :email
      t.string :password
      t.string :address
      t.integer :children

      t.timestamps null: false
    end
  end
end

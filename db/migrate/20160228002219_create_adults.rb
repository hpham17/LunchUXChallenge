class CreateAdults < ActiveRecord::Migration
  def change
    create_table :adults do |t|
      t.string :name
      t.integer :earnings
      t.string :earning_times
      t.integer :public
      t.string :public_times
      t.integer :pensions
      t.string :pensions_times

      t.timestamps null: false
    end
  end
end

class AddAdultIdToChildren < ActiveRecord::Migration
  def change
    add_column :children, :adult_id, :integer
  end
end

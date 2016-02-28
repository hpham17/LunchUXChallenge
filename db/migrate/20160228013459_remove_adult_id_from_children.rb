class RemoveAdultIdFromChildren < ActiveRecord::Migration
  def change
    remove_column :children, :adult_id
  end
end

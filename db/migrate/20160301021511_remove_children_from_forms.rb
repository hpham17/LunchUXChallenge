class RemoveChildrenFromForms < ActiveRecord::Migration
  def change
    remove_column :forms, :children
  end
end

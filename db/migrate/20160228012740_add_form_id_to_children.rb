class AddFormIdToChildren < ActiveRecord::Migration
  def change
    add_column :children, :form_id, :integer
  end
end

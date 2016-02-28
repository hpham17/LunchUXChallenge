class AddFormIdToAdults < ActiveRecord::Migration
  def change
    add_column :adults, :form_id, :integer
  end
end

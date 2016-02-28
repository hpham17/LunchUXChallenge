class RemoveFirstAdultNameFromForms < ActiveRecord::Migration
  def change
    remove_column :forms, :first_adult_name
    remove_column :forms, :second_adult_name
    remove_column :forms, :email
    remove_column :forms, :password
  end
end

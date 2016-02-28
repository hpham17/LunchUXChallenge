class AddNameToForms < ActiveRecord::Migration
  def change
    add_column :forms, :case_number, :integer
    add_column :forms, :first_adult_name, :string
    add_column :forms, :second_adult_name, :string
    add_column :forms, :total_household_members, :integer
    add_column :forms, :ssn, :integer
    add_column :forms, :signature, :string
    add_column :forms, :daytime_phone, :string
    add_column :forms, :ethnicity, :string
    add_column :forms, :race, :string
    add_column :forms, :agrees, :boolean
  end
end

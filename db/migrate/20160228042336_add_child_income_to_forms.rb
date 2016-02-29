class AddChildIncomeToForms < ActiveRecord::Migration
  def change
    add_column :forms, :child_income, :integer
    add_column :forms, :child_income_times, :string
  end
end

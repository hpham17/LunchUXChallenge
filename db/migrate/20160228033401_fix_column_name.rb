class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :adults, :earning_times, :earnings_times
  end
end

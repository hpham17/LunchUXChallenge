class FormCsv
  COLUMN_NAMES = %w(address children adults total_household_members ethnicity race ssn created_at)

  def self.to_csv(forms)
    CSV.generate do |csv|
      csv << COLUMN_NAMES
      forms.each do |app|
        row = [app.address]
        children = app.children.collect {|o| o.name }.join(", ")
        adults = app.adults.collect {|t| t.name }.join(", ")
        row << children
        row << adults
        row << [app.total_household_members, app.ethnicity, app.race, app.ssn, app.created_at]
        csv << row
      end
    end
  end

end

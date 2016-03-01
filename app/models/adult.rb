class Adult < ActiveRecord::Base
  validates :name, :earnings, :earnings_times, :public, :public_times, :pensions, :pensions_times, presence: true
  belongs_to :form
end

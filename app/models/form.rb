class Form < ActiveRecord::Base
  validates :address, :children, :total_household_members, :signature, presence: true
  has_many :adults
  has_many :children
  validates_associated :adults
  validates_associated :children
  accepts_nested_attributes_for :adults, :children
end

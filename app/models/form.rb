class Form < ActiveRecord::Base
  validates :address, :signature, presence: true
  validates :ssn, length: { maximum: 4 }
  has_many :adults
  has_many :children
  validates_associated :adults
  validates_associated :children
  accepts_nested_attributes_for :adults, :children, :reject_if => lambda { |a| a[:name].blank? }
end

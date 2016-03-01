class Form < ActiveRecord::Base
  validates :children, :signature, presence: true
  validates :ssn, length: { minimum: 4 , maximum: 4 }
  has_many :adults
  has_many :children
  validates_associated :adults
  validates_associated :children
  accepts_nested_attributes_for :adults, :children, :reject_if => lambda { |a| a[:name].blank? }
end

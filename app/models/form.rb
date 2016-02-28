class Form < ActiveRecord::Base
  validates :address, presence: true
  has_many :adults
  has_many :children
  accepts_nested_attributes_for :adults, :children
end

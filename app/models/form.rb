class Form < ActiveRecord::Base
  validates_format_of :email, :with => /.+@.+\..+/i
  validates :email, :password, :children, presence: true
  has_many :adult
  has_many :children, through: :adults
  accepts_nested_attributes_for :adults, :children
end

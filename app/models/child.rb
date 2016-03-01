class Child < ActiveRecord::Base
  validates :name, :status, presence: true
  belongs_to :form
end

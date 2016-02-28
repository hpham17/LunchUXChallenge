class Adult < ActiveRecord::Base
  has_many :children
  belongs_to :form 
end

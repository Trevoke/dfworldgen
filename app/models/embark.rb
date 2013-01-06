class Embark < ActiveRecord::Base
  attr_accessible :description, :screenshot
  belongs_to :parameter_set
end

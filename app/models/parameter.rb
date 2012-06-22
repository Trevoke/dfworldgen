class Parameter < ActiveRecord::Base
  belongs_to :parameter_set
  # Working on validation? See the ParametersValidator in lib

  private

end

class Parameter < ActiveRecord::Base
  belongs_to :parameter_set

  validates :title, length: {minimum: 1, maximum: 20}

  private

end

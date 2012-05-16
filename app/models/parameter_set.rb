class ParameterSet < ActiveRecord::Base
  acts_as_taggable
  acts_as_voteable
  belongs_to :user

  validates_presence_of :name, message: 'must exist.'

end

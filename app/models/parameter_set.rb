class ParameterSet < ActiveRecord::Base
  acts_as_taggable
  acts_as_votable
  belongs_to :user
  has_one :parameter

  validates_presence_of :name, message: 'must exist.'

end

class ParameterSet < ActiveRecord::Base
  acts_as_taggable
  acts_as_voteable
  belongs_to :user
end

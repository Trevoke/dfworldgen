require 'factory_girl'
#require 'factory_girl_rails'

FactoryGirl.define do

  sequence :email do |n|
    "user-#{n}@cyrusinnovation.com"
  end

  factory :user do
    email
    password 'password'
  end

  factory :parameter_set do
    name 'Necro towers'
    brackets "[bracket1]\n[bracket2]"
    description 'Very evil map'
  end

end

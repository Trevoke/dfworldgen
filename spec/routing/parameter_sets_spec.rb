require 'spec_helper'

describe 'Parameter Set Routing' do

  it 'has a route to vote_up' do
    put('/vote_up').should route_to(controller: 'parameter_sets',
                                      action: 'vote_up')
  end

  it 'has a route to vote_down' do
    put('/vote_down').should route_to(controller: 'parameter_sets',
                                               action: 'vote_down')
  end
end

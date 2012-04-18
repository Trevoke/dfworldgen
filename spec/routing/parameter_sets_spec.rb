require 'spec_helper'

describe 'Parameter Set Routing' do

  it 'has a route to vote_up' do
    put('/parameter_sets/1/vote_up').should route_to('parameter_sets#vote_up', id: '1')
  end

  it 'has a route to vote_down' do
    put('/parameter_sets/1/vote_down').should route_to('parameter_sets#vote_down', id: '1')
  end
end
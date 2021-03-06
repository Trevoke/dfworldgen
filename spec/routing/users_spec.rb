require 'spec_helper'

describe 'User Routing' do

  it 'has a route to vote_up' do
    put('/vote_up').should route_to(controller: 'users',
                                      action: 'vote_up')
  end

  it 'has a route to vote_down' do
    put('/vote_down').should route_to(controller: 'users',
                                               action: 'vote_down')
  end
end

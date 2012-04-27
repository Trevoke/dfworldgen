#=require parameter_sets

describe 'ParameterSet:', ->
  describe 'setup', ->
    it 'should allow binding to a vote div', ->
      fixture = '<div class=\'vote\'><a href="#" data-direction="up" data-id="1" data-method="put" rel="nofollow"><img alt="Up_arrow" src="/assets/up_arrow.png" /></a></div>'
      setFixtures fixture
      pSet.setup()
      expect($('.vote a')).toHandleWith('click', pSet.cast)

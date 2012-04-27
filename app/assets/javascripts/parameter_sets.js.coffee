window.pSet =
  setup: ->
    $('.vote a').bind('click', @cast)
  ,
  cast: ->
    id = $(this).data('id')
    direction = $(this).data('direction')
    $.ajax "/vote_#{direction}", type: 'PUT', data: {id: id}

$ ->
  pSet.setup()
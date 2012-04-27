class @ParameterSet
  constructor: ->

  setup: ->
    $('.vote a').bind('click', @cast)

  cast: ->
    id = $(this).data('id')
    direction = $(this).data('direction')
    $.ajax type: 'PUT',
           url: '/vote_' + direction,
           data: {id: id}
    false

$(document).ready ->
  (new ParameterSet).setup()
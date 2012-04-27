voteUp = {
  setup: ->
    $('voteup').bind('click', voteUp.vote)
  ,
  vote: ->
    id = $(this).data('id')
    $.ajax(type: 'PUT',
            url: '/vote_up',
            data: {id: id})
    false
}

voteDown = {
  setup: ->
    $('votedown').bind('click', voteDown.vote)
  ,
  vote: ->
    id = $(this).data('id')
    $.ajax(type: 'PUT',
            url: '/vote_down',
            data: {id: id})
    false
}

$(document).ready( ->
  voteUp.setup()
  voteDown.setup()
)

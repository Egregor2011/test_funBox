
hover_state_in = ->
  if $(this).hasClass('choosen')
    $(this).addClass('choosen-hover')

    $(this).find('.cat-box-pretitle').text('Котэ не одобряет?')
    $(this).find('.cat-box-pretitle').addClass('pink-text')
hover_state_out = ->
  if $(this).hasClass('choosen')
    $(this).removeClass('choosen-hover')

    $(this).find('.cat-box-pretitle').text('Сказочное заморское яство')
    $(this).find('.cat-box-pretitle').removeClass('pink-text')


$('[data-wrap]').mouseenter(hover_state_in)
$('[data-wrap]').mouseleave(hover_state_out)

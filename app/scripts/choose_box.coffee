div_check = (div, old, nu) ->
  if !$(div).hasClass('disabled')
    if !$(div).hasClass('choosen')
      $(div).addClass('choosen')
      $(div).removeClass('blue')
      $(nu).toggle()
      $(old).toggle()
    else
      $(div).removeClass('choosen')
      $(div).removeClass('choosen-hover')
      $(div).addClass('blue')
      $(nu).toggle()
      $(old).toggle()
      if $(div).find('.cat-box-pretitle').hasClass('pink-text')
        $(div).find('.cat-box-pretitle').text('Сказочное заморское яство')
        $(div).find('.cat-box-pretitle').removeClass('pink-text')


div_search = (s)->
  n_div = $(".cat-box-wrap[data-choose='#{s}']")
  old_text = $(".cat-box-text[data-oldText='#{s}']")
  new_text = $(".cat-box-choosed-text[data-newText='#{s}']")

  div_check(n_div, old_text, new_text)

choose_box = () ->
  choose_id = $(this).attr('data-choose')
  div_search(choose_id)


$('[data-choose]').click(choose_box)
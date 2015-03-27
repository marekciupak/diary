$(document).ajaxError (event, xhr, options, exc) ->
  errors = JSON.parse(xhr.responseText)
  er = '<ul>'
  i = 0
  while i < errors.length
    list = errors[i]
    er += '<li>' + list + '</li>'
    i++
  er += '</ul>'
  $('#error_explanation').html er
  return
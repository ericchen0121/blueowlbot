Template.registerHelper 'formatDate', (date) ->
  return moment(date).format('MM/DD/YY')
Router.route '/', ->
  @render 'blueowlbot'

Router.route '/history', ->
	@render 'history'
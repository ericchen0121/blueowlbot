Template.blueowlbot.helpers
	quote: -> 
		Session.get 'quote'

Template.blueowlbot.events

	'click #getQuote': (e) ->
		Meteor.call 'getQuote', (err, results) ->
			if (err)
				Session.set 'quote', {error: err}
			else 
				Session.set 'quote', JSON.parse(results.content)[0].content

	'click #awesome': (e) ->
		Meteor.call 'scoreQuote', Session.get 'quote', '10', (err, res) ->

	'click #ok': (e) ->
		Meteor.call 'scoreQuote', Session.get 'quote', '5', (err, res) ->
	'click #lame': (e) ->
		Meteor.call 'scoreQuote', Session.get 'quote', '0', (err, res) ->
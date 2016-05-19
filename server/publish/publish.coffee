Meteor.publish 'quotes', ->
	Quotes.find({ip: this.connection.clientAddress})
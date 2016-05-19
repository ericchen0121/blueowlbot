Meteor.methods
	getQuote: ->
		this.unblock()
		Meteor.http.call('GET', 'http://quotesondesign.com/wp-json/posts?filter[orderby]=rand&filter[posts_per_page]=1')
	scoreQuote: (quote, score) ->
		console.log 'quote is:', quote
		console.log 'score is', score
		ip = '120.17.205.89'
		date = new Date()
		quote = {
			date: date
			ip: ip
			quote: quote
			score: score
		}
		console.log 'quote is: ', quote
		Quotes.insert(quote)
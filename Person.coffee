class Person

	@counter = 0 # this is still not a true static var, like in Java or C++
							 # to get Singleton, http://coffeescriptcookbook.com/chapters/design_patterns/singleton

	constructor: (name) ->
		console.log("Hello")
		@counter += 1

	sayname: ->
		console.log("Hello Ted")

	what: ->
		console.log("what")

	this.who = ->
		console.log "static method who"

	@why: ->
		console.log "Another static method, why"


	@getStats: ->
		console.log "instances are #{@counter}"

obj = new Person "Ted"
obj.sayname() # remember to use the parens when the function is noarg
obj.what()
Person.why()
Person.who()

x1 = new Person
x2 = new Person

Person.getStats()


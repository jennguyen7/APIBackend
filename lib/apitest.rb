require 'httparty'

class APITest
	attr_accessor :name, :brains_eaten

	def initialize(name='frank')
		@name = name
		@brains_eaten = 0
	end

	def eat
		url = 'http://localhost:3000/testjsonforjen?account={"val":"test","val1":"test1","val2":"test2"}'
		response = HTTParty.get(url) # this does two things: 1) makes a request to the url and waits for the response, 2) once it gets the response (which it expects to be a JSON formatted string) and converts that JSON formatted string to a ruby object (we are doing this because we know that the URL we called is going to return a JSON formatted string, and not a HTML web page as would normally be the case for most web URL calls). The HTTParty logic has got a JSON.parse() happening inside it..
		print response['account_holder_email']
		#response.parsed_response
		'steven'
	end

	def hungry?
		@brains_eaten < 5
	end

	def full?
		@brains_eaten == 5
	end


end
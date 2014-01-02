module Diffbot
	class Connection
		# API url
		URL = "http://api.diffbot.com/v2"

		# Sends a get request to Diffbot with 
		# the given params
		def self.get(path, params)
			HTTParty.get("#{URL}/#{path}", params)
		end
	end
end
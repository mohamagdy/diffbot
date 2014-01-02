module Diffbot
	# API http://diffbot.com/products/automatic/article/
	class Article < OpenStruct
		# Fetches an article with the given params.
		# Params:
		# 	params: a hash of params with the following keys:
		# 		token: the API token (mandatory)
		# 		url: the url of the article to process (mandatory)
		# 		fields: the fields to return. The default is "*"
		# 		timeout: timeout in milli. Default is no timeout
		# 		callback: Use for jsonp requests. Needed for cross-domain ajax.
		# Response:
		# 	Article object that responds to the following methods:
		# 		article.images
		# 		article.icon
		# 		... 
		# 	For more methods please refer to the API doc page, "Response"
		# 	section.
		def self.fetch(params)
			response = Diffbot::Connection.get("article", { query: params })
			Article.new(JSON.parse(response.body))
		end
	end
end
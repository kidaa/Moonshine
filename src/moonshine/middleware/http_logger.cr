require "time"
class HttpLogger < Base
	def initialize
		@line = ""
	end
	def process_request(req)
		@line = "[" + Time.new.to_s + "] : \"#{req.method} #{req.path}\" "
	end

	def process_response(req, res)
		@line += res.status_code.to_s
		puts @line
	end
end
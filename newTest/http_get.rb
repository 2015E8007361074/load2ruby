=begin
require "net/http"
require "uri"
url = URI.parse("http://www.baidu.com/")
http = Net::HTTP.start(url.host, url.port)
doc = http.get(url.path)
p url.scheme
p url.host
p url.port
p url.path
p url.to_s

puts doc
=end

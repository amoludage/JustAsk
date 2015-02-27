require "net/http"
require "uri"

uri = URI("http://localhost:3000/registers")
#https = Net::HTTP.new(uri.host, uri.port)
#https.use_ssl = false
#request = Net::HTTP::Post.new(uri.path)
register ={register: {registration_id: 'anwqja kcznlnclanlmnndiajnie djhb', phone_number: '9870666535', device_number: 'iruc', os_type: 'android'}}
p 'hello'
response = Net::HTTP.post_form(uri, register)
p 'bye'
p response

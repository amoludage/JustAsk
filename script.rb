require 'gcm'

class GcmApp
  def sendMessage(api_key, registration_ids, options)
    gcm = GCM.new(api_key)
    response = gcm.send(registration_ids, options)
    puts response
  end

end

api_key = 'AIzaSyCUe0G5x8mPeyZEFbvPxxw4i7QebM0uS9M'
registration_ids= ["10",'13'] # an array of reg ids of clients
options = {data: {score: "123"}, collapse_key: "updates_available"}

app = GcmApp.new
app.sendMessage(api_key, registration_ids, options)

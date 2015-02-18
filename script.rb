require 'gcm'
require './api_key'

class GcmApp
  def sendMessage(api_key, registration_ids, options)
    gcm = GCM.new(api_key)
    response = gcm.send_notification(registration_ids,options)
    puts response
  end

end

options = {data: {score: "123"}, collapse_key: "updates_available"}

app = GcmApp.new
api = Apikey.new
p api
registration_ids = api.registration_ids
api_key = api.api_key
#app.sendMessage(options)
app.sendMessage(api_key, registration_ids, options)

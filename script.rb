require 'gcm'
require 'api_key'

class GcmApp
  def sendMessage(options)#(api_key, registration_ids, options)
    api = Apikey.new
    #gcm = initialize_pro()
    gcm = GCM.new(@api_key)
    response = gcm.send(registration_ids, options)
    puts response
  end

end

options = {data: {score: "123"}, collapse_key: "updates_available"}

app = GcmApp.new
app.sendMessage(options)
#app.sendMessage#(api_key, registration_ids, options)

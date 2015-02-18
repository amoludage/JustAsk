require 'gcm'
require './config/initializers/api_key'

class GcmApp
  def sendMessage(options)
    @gcm = GCM.new(GCM_API_KEY)
    response = @gcm.send_notification(REGISTRATION_ID,options)
    puts response
  end

end

options = {data: {message: "Hi, Hello world"}, collapse_key: "updates_available"}
app = GcmApp.new
app.sendMessage(options)

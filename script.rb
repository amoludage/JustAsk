require 'gcm'
require './config/initializers/api_key'

class GcmApp
  def sendMessage(options)
    gcm = GCM.new(GCM_API_KEY) #GCM_API_KEY is declared in config/initializers/api_key.rb
    response = gcm.send_notification(REGISTRATION_ID,options) #REGISTRATION_ID also in initializers
    p REGISTRATION_ID
    puts response
  end

end

options = {data: {message: "What is your name?#  Amol@Trupti"}}
app = GcmApp.new
app.sendMessage(options)

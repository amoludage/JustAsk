require 'gcm'
class RegistersController < ApplicationController
  def index
    #p JSON.parse(@register.to_json)
  end
#
  def new
   # data = request.body.read
   # data = "{\"registration_id\": \"APA91bGkUctRzql2nHZuqIXDG5L7ehTRWasJUA0R3Dmcdt-H5vJnnpKCayU_KyRBxAT7pOAlWv7z_t541xnZOeTPOMpTzghI6vFmQklDokXnyb-Wo     1bTiC3IF_-fCixRPJBRFmkNa9mQ_uYn6f2Wv8ka-vjYeYpWwz9MkgQqn_oGYqFgZkwL2LQ\", \"phone_number\": \"9860666535\", \"os_type\": \"Android\", \"device_number\": \"iris\"}"
    #register = Register.new(JSON.parse(data))#params[:id])
    #register = data && data.length >= 2 ? JSON.parse(data) : nil
    #p data
    register =  Register.find(params[:registration_id])
    #respond_to |format|
    #if register.save
     # render '{success: true}'
      #reg_id = register['registration_id']
      #phone_number = register['phone_number']
      #os_type = register['os_type']
      #device_number = register['device_number']

       # render {sucess: true}
      #else
      #  render {error: register.errors.full_messages}
      #end
      #Register.create!(registration_id: reg_id, phone_number: phone_number, os_type: os_type, device_number: device_number)
    #p @register
   #   api_key =  'AIzaSyCUe0G5x8mPeyZEFbvPxxw4i7QebM0uS9M'
  #    gcm = GCM.new(api_key)
   #   options = {data: {score: '123'}}
    #  res = gcm.send_notification(register[:registration_id], options)
     # puts res
   # else
      render :success => "register.errors.full_messages"
   # end
  end

  def create

  end

end

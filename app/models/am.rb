def new
   # data = request.body.read
    data = "{\"registration_id\": \"APA91bGkUctRzql2nHZuqIXDG5L7ehTRWasJUA0R3Dmcdt-H5vJnnpKCayU_KyRBxAT7pOAlWv7z_t541xnZOeTPOMpTzghI6vFmQklDokXnyb-Wo     1bTiC3IF_-fCixRPJBRFmkNa9mQ_uYn6f2Wv8ka-vjYeYpWwz9MkgQqn_oGYqFgZkwL2LQ\", \"phone_number\": \"9860666535\", \"os_type\": \"Android\", \"device_number\": \"iris\"}"
    #register = Register.new(JSON.parse(data))#params[:id])
    #data = {'registration_id': 'APA91bGkUctRzql2nHZuqIXDG5L7ehTRWasJUA0R3Dmcdt-H5vJnnpKCayU_KyRBxAT7pOAlWv7z_t541xnZOeTPOMpTzghI6vFmQklDokXnyb-Wo     1bTiC3IF_-fCixRPJBRFmkNa9mQ_uYn6f2Wv8ka-vjYeYpWwz9MkgQqn_oGYqFgZkwL2LQ', 'phone_number': '9860666656', 'device_number': 'iris', 'os_type': 'android'}.to_json
    p data
    register = data && data.length >= 2 ? JSON.parse(data) : nil
    #@reg = Register.new(params[:id])
    #puts @reg
    #@register = JSON.parse(@reg)
    puts register
    
    #{register: {phoneno: 'aaa', ''}}
    puts register['registration_id']
    puts "************8JIGAST "
    if register
      reg_id = register['registration_id']
      phone_number = register['phone_number']
      os_type = register['os_type']
      device_number = register['device_number']
      #if register.create(params[:register])

       # render {sucess: true}
      #else
      #  render {error: register.errors.full_messages}
      #end
      Register.create!(registration_id: reg_id, phone_number: phone_number, os_type: os_type, device_number: device_number)
    #p @register
      api_key =  'AIzaSyCUe0G5x8mPeyZEFbvPxxw4i7QebM0uS9M'
      gcm = GCM.new(api_key)
      options = {data: {score: '123'}}
      res = gcm.send_notification(reg_id, options)
      puts res
    end
  end



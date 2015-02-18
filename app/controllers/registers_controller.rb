require 'gcm'

class RegistersController < ApplicationController
  def index
    #p JSON.parse(@register.to_json)
  end


  def new
    data = request.body.read
    #register = Register.new(JSON.parse(data))#params[:id])
    register = data && data.length >= 2 ? JSON.parse(data) : nil
    #@reg = Register.new(params[:id])
    #puts @reg
    #@register = JSON.parse(@reg)
    puts register
    if register
      reg_id = register.registration_ids
      phone_number = register.phone_number
      os_type = register.os_type
      device_number = register.device_number
      Register.create!(registration_id: reg_id, phone_number: phone_number, os_type: os_type, device_number: device_number)
    #p @register
      api_key =  'AIzaSyCUe0G5x8mPeyZEFbvPxxw4i7QebM0uS9M'
      gcm = GCM.new(api_key)
      options = {data: {score: '123'}}
      res = gcm.send_notification(reg_id, options)
      puts res
    end
  end

  def create

  end

end

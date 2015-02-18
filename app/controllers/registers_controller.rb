require 'gcm'

class RegistersController < ApplicationController
  def index
    #p JSON.parse(@register.to_json)
  end


  def new
    data = request.body.read
    register = Register.new(JSON.parse(data))#params[:id])

    #@reg = Register.new(params[:id])
    #puts @reg
    #@register = JSON.parse(@reg)
    puts register
    reg_id = register.registration_ids
    phone_number = register.phone_number
    os_type = register.os_type
    Register.create!(registration_id: reg_id, phone_number: phone_number, os_type: os_type)
    #p @register
    api_key =  'AIzaSyCUe0G5x8mPeyZEFbvPxxw4i7QebM0uS9M'
    gcm = GCM.new(api_key)
    options = {data: {score: '123'}}
    res = gcm.send_notification(reg_id, options)
    puts res
  end

  def create

  end

end

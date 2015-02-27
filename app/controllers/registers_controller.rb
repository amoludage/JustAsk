require 'gcm'
require './config/initializers/api_key'
require 'json'

class RegistersController < ApplicationController
  def index
  end

  def create
    #data = request.body.read
    #@register = Register.new(JSON.parse(data.to_json))#params[:id])
    #register = data && data.length >= 2 ? JSON.parse(data) : nil

    @register =  Register.create(params[:register])
    #@register = Register.new(JSON.parse(data))
    p @register
    if @register.save
      p 'hi'
      gcm = GCM.new(GCM_API_KEY)
      options = {data: {message: 'registration successfull'}}
      res = gcm.send_notification([@register.registration_id], options)
      render json: {:success => true}
    else
      p 'bye'
      render json: {:error => @register.errors.full_messages}
    end
  end

=begin  private
  def reg_params
    params.require(:register).permit(:registration_id, :phone_number, :device_number, :os_type)
  end
=end
end

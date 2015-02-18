require 'gcm'
require './config/initializers/api_key'

class RegistersController < ApplicationController
  def index
  end

  def create
    # data = request.body.read
    #register = Register.new(JSON.parse(data))#params[:id])
    #register = data && data.length >= 2 ? JSON.parse(data) : nil
    #
    @register =  Register.create(params[:register])
    if @register.save
      gcm = GCM.new(GCM_API_KEY)
      options = {data: {message: 'registration successfull'}}
      res = gcm.send_notification([@register.registration_id], options)
      render json: {:success => true}
    else
      render json: {:error => @register.errors.full_messages}
    end
  end


end

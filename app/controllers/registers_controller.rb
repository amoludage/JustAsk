class RegistersController < ApplicationController
  def index
    #p JSON.parse(@register.to_json)
  end


  def new
    #data = request.body.read
    #register = Register.new(JSON.parse(data))#params[:id])

    @register = Register.new(params[:id])
    reg_id = @register.registration_ids
    phone_number = @register.phone_number
    os_type = @register.os_type
    Register.create!(registration_id: reg_id, phone_number: phone_number, os_type: os_type)
    p @register
  end

  def create

  end

end

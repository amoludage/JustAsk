class RegistersController < ApplicationController
  def index
    @register = Register.all
  end

  def new
    @register = Register.new
  end

  def create

  end

end

class RegistersController < ApplicationController
  def index
    HardWorker.perform_async('bob', 5)
    @register = Register.all
  end

  def new
    @register = Register.new
  end

  def create

  end

end

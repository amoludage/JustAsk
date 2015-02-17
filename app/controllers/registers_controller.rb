class RegistersController < ApplicationController
  def index
    HardWorker.perform_async('bob', 5)
  end

  def new

  end

  def create

  end

end

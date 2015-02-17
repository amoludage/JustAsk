class Register
  include Mongoid::Document
  HardWorker.perform_async('bob', 5)
end

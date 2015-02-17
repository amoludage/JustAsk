class Register
  include Mongoid::Document
  field :name, type: String
  field :registration_id, type: String

  #validates :device.number, presence:true
  #HardWorker.perform_async('bob', 5)
  #SampleJob.perform_later('amol',11,22)
end

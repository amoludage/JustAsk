class Register
  include Mongoid::Document
  field :phone_number, type: String
  field :device_number, type: String
  field :os_type, type: String
  field :registration_id, type: String

  validates_presence_of :registration_id
  #validates :device.number, presence:true
  #HardWorker.perform_async('bob', 5)
  #SampleJob.perform_later('amol',11,22)
end

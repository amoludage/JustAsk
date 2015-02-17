class SampleJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    p ' something later'
  end
end

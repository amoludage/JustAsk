class HardWorker
  include Sidekiq::Worker

  def perform(name, count)
    puts 'hello Sidekiq'
  end
end

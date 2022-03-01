class NoQueueProcessorJob
  include Sidekiq::Job

  sidekiq_options queue: :no_processor

  def perform(*args)
    # Do something
  end
end

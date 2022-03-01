class ErrorJob
  include Sidekiq::Job
  sidekiq_options queue: :default, tags: ['☹️'], retry: 3

  def perform(*args)
    raise StandardError, "Oh no!"
  end
end

class LongJob
  # A simple job that simulates a long running process
  include Sidekiq::Job

  sidekiq_options queue: :crawler, tags: ['alpha', '🥇']

  def perform(*args)
    counter = 0

    while counter <= 4
      sleep(5)
      Rails.logger.info("Long job is running ...")
      counter += 1
    end

    Rails.logger.info("Long job finished!")
  end
end

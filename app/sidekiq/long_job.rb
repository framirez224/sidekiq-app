class LongJob
  include Sidekiq::Job

  sidekiq_options queue: :crawler, tags: ['alpha', '🥇']

  def perform(*args)
    counter = 0

    while counter <= 4
      sleep(5)
      Rails.logger.info("Long job is running ...")
      counter += 1
    end
  end
end

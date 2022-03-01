class LongJob
  include Sidekiq::Job

  sidekiq_options queue: :crawler, tags: ['alpha', '🥇']

  def perform(*args)
    counter = 0

    while counter <= 30
      sleep(1)
      Rails.logger.info("Long job is running ...")
    end
  end
end

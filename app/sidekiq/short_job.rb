class ShortJob
  include Sidekiq::Job
  sidekiq_options queue: :default, tags: ['🥇']

  def perform(*args)
    sleep(0.05)
  end
end

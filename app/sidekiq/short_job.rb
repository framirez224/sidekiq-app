class ShortJob
  include Sidekiq::Job
  sidekiq_options queue: :default, tags: ['🥇']

  def perform(*args)
    # Do something
  end
end

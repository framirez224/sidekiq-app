class MailerJob
  include Sidekiq::Job
  sidekiq_options queue: :mailer, tags: ['📨']

  def perform(*args)
    # Do something
  end
end

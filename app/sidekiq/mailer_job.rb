class MailerJob
  include Sidekiq::Job
  sidekiq_options queue: :mailer, tags: ['📨']

  def perform(email)
    Rails.logger.info("Gonna send an email to #{email}")
  end
end

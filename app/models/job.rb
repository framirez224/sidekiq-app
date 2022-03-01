class Job
  include ActiveModel::API

  attr_accessor :id, :name

  JOBS = {
    1 => LongJob.name,
    2 => ShortJob.name,
    3 => MailerJob.name,
    4 => ErrorJob.name,
    5 => NoQueueProcessorJob.name
  }

  def self.available
    JOBS.map { |idx, name| self.new(name: name, id: idx) }
  end
end

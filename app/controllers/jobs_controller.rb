class JobsController < ApplicationController
  before_action :set_jobs, only: %i[ new create ]

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # POST /jobs
  def create
    klass_name = job_params.safe_constantize

    @job = Job.new(name: klass_name.to_s, id: 1)

    job_id = if klass_name.name == MailerJob.name
      klass_name.perform_async('foobar@example.com')
    else
      klass_name.perform_async
    end

    redirect_to new_job_url, notice: "Enqueued job #{job_id}."
  end

  def oh_boy
    args = (0..100).map do |_|
      []
    end

    ShortJob.perform_bulk(args)

    redirect_to new_job_url
  end


  private

  # Only allow a list of trusted parameters through.
  def job_params
    params.require(:job_name)
  end

  def set_jobs
    @available_jobs = Job.available
  end
end

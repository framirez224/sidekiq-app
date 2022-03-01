class JobsController < ApplicationController
  before_action :set_jobs, only: %i[ new create ]

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # POST /jobs
  def create
    klass_name = job_params["job_name"].safe_constantize

    @job = Job.new(name: klass_name.to_s, id: 1)

    job_id = klass_name.perform_async

    redirect_to new_job_url, notice: "Enqueued job #{job_id}."
  end

  private

  # Only allow a list of trusted parameters through.
  def job_params
    params.permit(:job_name)
  end

  def set_jobs
    @available_jobs = Job.available
  end
end

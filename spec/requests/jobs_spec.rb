require 'rails_helper'

RSpec.describe "JobsController", type: :request do
  describe "GET /new" do
    subject { get new_job_url }

    it 'returns 200' do
      subject
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    let(:params) { {} }

    subject { post jobs_url, params: params }

    pending 'Add a test here'
  end
end

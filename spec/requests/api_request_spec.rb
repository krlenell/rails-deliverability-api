require 'rails_helper'

RSpec.describe "Apis", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/api/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /register" do
    it "returns http success" do
      post "/api/register"
      expect(response).to have_http_status(:created)
    end
  end

  describe "POST /alive" do
    it "returns http success" do
      post "/api/alive"
      expect(response).to have_http_status(:created)
    end
  end

  describe "POST /report" do
    it "returns http success" do
      post "/api/report"
      expect(response).to have_http_status(:created)
    end
  end

  describe "PATCH /terminate" do
    it "returns http success" do
      patch "/api/terminate"
      expect(response).to have_http_status(:success)
    end
  end

end

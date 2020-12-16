require 'rails_helper'

RSpec.describe ApiController, type: :controller do
  describe "POST #register" do
    context "with invalid params" do
      it "validates valid phone number" do
        post :register, params: { carrier: "ATT", phone_number: "12345"}
        expect(response).to have_http_status(500)
      end

      it "validates carrier exists" do
        post :register, params: {carrier: nil, phone_number: "1253-303-5074"}
        expect(response).to have_http_status(500)
      end
    end

    context "with valid params" do
      it "reponds properly with proper params" do
        post :register, params: { carrier: "ATT", phone_number: "1253-303-5074"}
        expect(response).to have_http_status(:created)
      end
    end
  end


end

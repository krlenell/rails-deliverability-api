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

  describe "POST #alive" do
    context "with invalid params" do
      it "fails when given nonexistant device_id" do
        post :alive, params: {device_id: "fake device_id"}
        expect(response).to have_http_status(500)
      end
    end

    # context "with valid params" do
    #   it "succeeds when given a proper device_id" do
    #     post :alive, params: {device_id: "Some real device_id"}
    #     expect(response).to have_http_status(:created)
    #   end
    # end
  end

  describe "POST #report" do
    context "with invalid params" do
      it "fails when given nonexistant device_id" do
        post :report, params: {device_id: "fake ID", sender: "1253-303-5074", message: "LOL 😁😁😁"}
        expect(response).to have_http_status(500)
      end
      #do another with invalid params that aren't device ID
    end
    #context "with valid params" do
      #still need to figure out this associated randomly generated UUID association test

  end

  describe "POST #terminate" do
    context "with invalid params" do
      it "fails when given nonexistant device_id" do
        patch :terminate, params: {device_id: "fake ID"}
        expect(response).to have_http_status(500)
      end
    end
    #context "with valid params"
  end


end

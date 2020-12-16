class ApiController < ApplicationController
  def index
    @devices = Device.all
    render json: @devices
  end

  def register
    phone = Phonelib.parse(params[:phone_number])
    #check if phone is valid here
    phone = phone.e164
    device = Device.new
    device.phone_number = phone
    device.carrier = params[:carrier]
    if device.save
      render json: {device_id: device.id}, status: :created
    else
      render json: {error: "device not created"}, status: 500
    end
  end

  #   2b42ab63-b5d3-4f23-98bd-32b62ccb21c0

  def alive
    id = params[:device_id]
    # test if this device id exists in db
    if !Device.exists?(id: id)
      render json: {error: "no device for that id found"}, status: 500
      return
    end
    heartbeat = Heartbeat.new
    heartbeat.device_id = id
    if heartbeat.save
      render :nothing => true, status: :created
    else
      render json: {error: "heartbeat could not be created, re-check the device_id"}, status: 500
    end
  end

  def report
    # id = params[:device_id]
    # if !Device.exists?(id: id)
    #   render json: {error: "no device for that id found"}, status: 500
    #   return
    # end
    # report = Report.new
    render json: 'report'
  end

  def terminate
    render json: 'terminated'
  end


end

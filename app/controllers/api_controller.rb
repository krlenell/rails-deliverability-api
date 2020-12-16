class ApiController < ApplicationController
  def index
    @devices = Device.all
    render json: @devices
  end

  def register
    phone = parse_phone(params[:phone_number])

    #check if phone is valid
    if !phone
      render json: {error: "phone number is invalid"}, status: 500
      return
    end
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
    device = Device.find_by(id: id)
    if !device
      render json: {error: "no device for that id found"}, status: 500
      return
    end
    if device.disabled_at
      render json: {error: "device has been deactivated"}, status: 500
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
    id = params[:device_id]
    if !Device.exists?(id: id)
      render json: {error: "no device for that id found"}, status: 500
      return
    end
    report = Report.new
    report.device_id = id
    sender = parse_phone(params[:sender])
    if !sender
      render json: {error: "sender number is invalid"}, status: 500
      return
    end
    report.sender = sender
    report.message = params[:message]
    if report.save
      render :nothing => true, status: :created
    else
      render json: {error: "report could not be created"}, status: 500
    end
  end

  def terminate
    id = params[:device_id]
    if !Device.exists?(id: id)
      render json: {error: "id does not exist"}, status: 500
      return
    end
    device = Device.find_by(id: id)
    if device.update(disabled_at: DateTime.now)
      render :nothing => true, status: :no_content
    else
      render json: {error: "could not terminate device"}, status: 500
    end
  end

  private

  def parse_phone number
    phone = Phonelib.parse(number)
    #check if phone is valid
    if phone.invalid?
      return
    end
    return phone.e164
  end

end

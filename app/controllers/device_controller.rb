class DeviceController < ApplicationController
  def index
    @devices = Device.all
  end

  def create
    @device = Device.create params.require(:device).permit(:phone_number, :carrier)

  end
end

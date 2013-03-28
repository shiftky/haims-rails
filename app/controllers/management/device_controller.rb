# encoding: utf-8

class Management::DeviceController < ApplicationController
  def index
    @devices = Device.all
  end

  def show
    @device = Device.includes(:ir_signal).find(params[:id])
  end

  def new
    @device = Device.new
  end

  def create
    @device = Device.new(params[:device])

    if @device.save
      redirect_to management_device_index_path, :notice => "登録しました"
    else
      redirect_to edit_management_device_index_path, :notice => "登録に失敗しました"
    end
  end

  def destroy
    Device.find(params[:id]).destroy
    redirect_to management_device_index_path(:id => params[:device_id]), :notice => "削除しました"
  end
end

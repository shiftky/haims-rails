# encoding: utf-8

class Management::IrSignalController < ApplicationController
  def new
    @ir_signal = IrSignal.new
  end

  def create
    @ir_signal = IrSignal.new(params[:ir_signal])

    if @ir_signal.save
      redirect_to management_device_path(:id => params[:device_id]), :notice => "登録しました"
    else
      redirect_to new_management_device_ir_signal_path, :alert => "登録に失敗しました"
    end
  end

  def destroy
    IrSignal.find(params[:id]).destroy
    redirect_to management_device_path(:id => params[:device_id]), :notice => "削除しました"
  end
end

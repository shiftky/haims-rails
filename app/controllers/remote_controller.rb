# encoding: utf-8

class RemoteController < ApplicationController
  def index
    @devices = Device.all
  end

  def ir_send
    board = Board.where("name = ?", "main")
    signal = IrSignal.find(params[:id])

    sp = SerialPort.new(board.first.serial_port, 9600, 8, 1, SerialPort::NONE)
    sleep 1
    sp.puts "0\n"
    sleep 0.8
    sp.puts signal.data + "\n"
    sleep 0.8
    sp.close

    redirect_to remote_index_path, :notice => "送信しました"
  end
end

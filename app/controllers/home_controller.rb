class HomeController < ApplicationController
  def index
    board = Board.where("name = ?", "main")
    sp = SerialPort.new(board.first.serial_port, 9600, 8, 1, SerialPort::NONE)
    sleep 1
    sp.puts "2\n"
    while sp.gets do
      @lx = sp.gets
      break
    end

    sp.puts "3\n"
    while sp.gets do
      @temp = sp.gets
      break
    end

    sp.close
  end
end

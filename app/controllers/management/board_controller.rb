# encoding: utf-8

class Management::BoardController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(params[:board])

    if @board.save
      redirect_to management_board_index_path, :notice => "登録しました"
    else
      redirect_to edit_management_board_path, :alert => "登録に失敗しました"
    end
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    @board.assign_attributes(params[:board])
    if @board.save
      redirect_to management_board_index_path, :notice => "更新しました"
    else
      redirect_to edit_management_board_path, :alert => "更新に失敗しました"
    end
  end

  def destroy
    Board.find(params[:id]).destroy
    redirect_to management_board_index_path, :notice => "削除しました"
  end
end

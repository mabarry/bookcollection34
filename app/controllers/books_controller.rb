class BooksController < ApplicationController
  def index
    @page = params[:page].to_i
    @books = ['Crime and Punishment', 'Notes from the Underground', 'No Longer Human']
  end

  def new
  end

  def edit
  end
end

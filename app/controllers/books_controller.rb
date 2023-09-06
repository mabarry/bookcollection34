class BooksController < ApplicationController
  def index
    # @page = params[:page].to_i
    @books = Book.order(:id)
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path, flash: { success: 'Book created successfully.' }
    else
      flash.now[:error] = "Cannot create book. Please fill in all forms."
      render 'new'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:success] = "Book edited successfully."
      redirect_to book_path(@book)
    else
      flash[:error] = "Cannot update book information."
      render('edit')
    end
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      flash[:success] = "Book deleted successfully."
    else
      flash[:error] = "Unable to delete book -- an error was encountered."
    end
    redirect_to books_path
  end

  def book_params
    params.require(:book).permit(:name, :author, :published_date, :price)
  end
  
end

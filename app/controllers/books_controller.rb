class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path(book.id)
  end
  
  def update
    book = Book.find(book_params)
    book.update
    redirect_to books_path(blog.id)
  end

  private
  def book_params
    params.permit(:title, :body)
  end

end

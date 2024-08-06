# frozen_string_literal: true

# class BooksController
class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_author

  def index
    @books = @author.books
  end

  def show
    @book = @author.books.find(params[:id])
  end

  def new
    @book = @author.books.build
  end

  def create
    @book = @author.books.build(book_params)
    if @book.save
      redirect_to author_book_path(@author, @book)
    else
      render 'new'
    end
  end

  def edit
    @book = @book.find(params[:id])
  end

  def update
    @book = @book.find(params[:id])
    if @book.update(book_params)
      redirect_to author_book_path(@author, @book)
    else
      render 'edit'
    end
  end

  def destroy
    @book = @book.find(params[:id])
    @book.destroy
    redirect_to author_books_path(@book.author)
  end

  private

  def set_author
    @book = Book.find(params[:author_id])
  end

  def book_params
    params.require(:book).permit(:title, :year_published)
  end
end

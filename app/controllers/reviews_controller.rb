class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    @book = Book.find(params[:book_id])
    @review = @book.reviews.build(review_params)
    @review.user = current_user
    if @review.save
      redirect_to author_book_path(@book.author, @book)
    else
      redirect_to author_book_path(@book.author, @book), alert: "Unable to add review."
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to author_book_path(@review.book.author, @review.book)
  end

  private

  def review_params
    params.require(:review).permit(:title, :body)
  end
end

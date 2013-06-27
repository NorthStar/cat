class ReviewsController < ApplicationController
	http_basic_authenticate_with name: "wanmen", password: "secret", except: [:index, :show]
 
	def new
	    @department = Department.find(params[:department_id])
		@review = Review.new
	end

	def show
 		@review = Review.find(params[:id])
	end

	def create
	    @department = Department.find(params[:department_id])
	    @review = @department.reviews.create(params[:review])
	    redirect_to department_reviews_path(@department)
	end
	def edit
	    @department = Department.find(params[:department_id])
  		@review = Review.find(params[:id])
	end
	def update
		@review = Review.find(params[:id])
		@review.attributes = params[:review]
		if @review.save
			redirect_to department_review_path(@review)
		else
			render 'edit'
		end
	end
	def destroy
	  @review = Review.find(params[:id])
	  @review.destroy
	 
	  redirect_to department_review_path(@review)
	end
	def index
		@department = Department.find(params[:department_id])
		@reviews = @department.reviews.all
	end
end
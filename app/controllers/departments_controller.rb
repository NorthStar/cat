class DepartmentsController < ApplicationController
	def new
		@department = Department.new
	end
	def show
 		@department = Department.find(params[:id])
 		@videos=@department.videos.find(:all, :order => "id desc", :limit => 4)
 		@reviews=@department.reviews.find(:all, :order => "id desc", :limit => 4)
 		@booklists=@department.booklists.find(:all, :order => "id desc", :limit => 4)
	end
	def create
		@department = Department.new(params[:department])
		@department.save
		redirect_to @department
    end
    def edit
    	@department = Department.find(params[:id])
    end
    def update
    	@department = Department.find(params[:id])
		@department.attributes = params[:department]
		if @department.save
			redirect_to department_path(@department)
		else
			render 'edit'
		end
    end
    def index
    	@departments= Department.all
    end
end

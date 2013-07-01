class DepartmentsController < ApplicationController
	def new
		@department = Department.new
	end
	def show
 		@department = Department.find(params[:id])
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

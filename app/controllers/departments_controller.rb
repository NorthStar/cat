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
    def index
    	@departments= Department.all
    end
end

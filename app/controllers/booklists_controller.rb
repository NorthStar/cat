class BooklistsController < ApplicationController
	def new
	    @department = Department.find(params[:department_id])
		@booklist = Booklist.new
	end

	def show
 		@booklist = Booklist.find(params[:id])
	end

	def create
	    @department = Department.find(params[:department_id])
	    @booklist = @department.booklists.create(params[:booklist])
	    redirect_to department_booklists_path(@department)
	end
	def edit
	    @department = Department.find(params[:department_id])
  		@booklist = Booklist.find(params[:id])
	end
	def update
		@booklist = Booklist.find(params[:id])
		@booklist.attributes = params[:booklist]
		if @booklist.save
			redirect_to department_booklist_path(@booklist)
		else
			render 'edit'
		end
	end
	def destroy
	  @booklist = Booklist.find(params[:id])
	  @booklist.destroy
	 
	  redirect_to department_booklist_path(@booklist)
	end
	def index
		@department = Department.find(params[:department_id])
		@booklists = @department.booklists.all
	end
end

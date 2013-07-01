class XesController < ApplicationController
	def new
		@x = X.new
	end
	def show
 		@x = X.find(params[:id])
	end
	def create
		@x = X.new(params[:x])
		@x.save
		redirect_to @x
    end
    def edit
    	@x = X.find(params[:id])
    end
    def update
    	@x = X.find(params[:id])
		@x.attributes = params[:x]
		if @x.save
			redirect_to x_path(@x)
		else
			render 'edit'
		end
    end
    def index
    	@xes= X.all
    end
end

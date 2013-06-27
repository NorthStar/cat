class VideosController < ApplicationController
	def new
	    @department = Department.find(params[:department_id])
		@video = Video.new
	end

	def show
 		@video = Video.find(params[:id])
	end

	def create
	    @department = Department.find(params[:department_id])
	    @video = @department.videos.create(params[:video])
	    redirect_to department_videos_path(@department)
	end
	def edit
	    @department = Department.find(params[:department_id])
  		@video = Video.find(params[:id])
	end
	def update
		@video = Video.find(params[:id])
		@video.attributes = params[:video]
		if @video.save
			redirect_to department_video_path(@video)
		else
			render 'edit'
		end
	end
	def destroy
	  @video = Video.find(params[:id])
	  @video.destroy
	 
	  redirect_to department_video_path(@video)
	end
	def index
		@department = Department.find(params[:department_id])
		@videos = @department.videos.all
	end
end

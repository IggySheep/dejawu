class ProjectsController < ApplicationController
	before_action :find_project, only: [:show, :edit, :update, :destroy, :complete, :started, :stopped]
	
	def index
		@projects= Project.all.order("created_at DESC")
	end

	def new
		@project = Project.new
	end



def create
	@project=Project.new(project_params)
	if @project.save
		redirect_to root_path
    else
    	render 'new'

end
end

		def show
	
		
	end


	def edit
	
		
	end



	def update
	
		if @project.update(project_params)
			redirect_to project_path(@project)
		else
			render'edit'
		end
	end

	def destroy
		@project.destroy
		redirect_to root_path
     end


	def complete
		@project.update_attribute(:completed_at, Time.now)
		redirect_to root_path
	end

	def started
		@project.update_attribute(:w0_started_at, Time.now)
		redirect_to project_path
      
	end

	def stopped
		@project.update_attribute(:w0_stopped_at, Time.now)
		redirect_to project_path
      
	end



private
def project_params
	params.require(:project).permit(:title, :description, :noInt, :noExt, :workTodo, :workTodo1, :workTodo2, :workTodo3, :workTodo4, :work, :work1,:work2,:work3,:work4,:bearbeiter,:liefTermn,:warEing,:ext, :ext1, :ext2, :ext3)
end

def find_project

    @project = Project.find(params[:id])

end

end


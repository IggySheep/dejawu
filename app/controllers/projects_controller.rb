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
    
		@project.update_attribute(:w0_started_at, Time.now)
		@project.update_attribute(:w0_stopped_at, Time.now)
	
		if @project.save
	    redirect_to root_path
    	else
    		puts(@project.errors.full_messages)
    	render 'new'

		end
	end

	def show
    @project = Project.find(params[:id])
    @kunde = Kunden.find(@project.kunden_id)
    #@kunden = Kunden.all.collect{|d| [d.firma, d.id ]}
     #@kunden = Kunden.find(params[:kunden_id])
    end



	def edit
	
		
	end

	 

	




	def update
	
		if @project.update(project_params)
		redirect_to project_path(@project)
		else
			#puts(@project.errors.full_messages)
			render'edit'
		end
	end

	def destroy
		@project.destroy
		puts(@project.errors.full_messages)
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

	params.require(:project).permit(:title,:description,:noInt,:noExt,:workTodo, :created_at, :updated_at, :completed_at, :workTodo1,:workTodo2, :workTodo3, :workTodo4, :w0_started_at, :w0_stopped_at, :work, :work1, :work2, :work3, :work4, :bearbeiter, :liefTermn, :warEing, :ext, :ext1, :ext2, :ext3, :ansprech, :kunde, :befund, :zukauf, :kunden_id)

end

def find_project

    @project = Project.find(params[:id])

end

end


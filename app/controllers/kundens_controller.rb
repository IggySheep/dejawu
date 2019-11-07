class KundensController < ApplicationController
	before_action :find_kunden, only: [:show, :edit, :update, :destroy, :complete]

	def index
	@kundens = Kunden.all
	end

	def new
	@kunden = Kunden.new
	end

	 def create 
  	 @kunden = Kunden.new(kunden_params) 
     if @kunden.save 
        redirect_to root_path 
    	else 
    	render 'new' 
  		end 
		end 

	def show
	  @kunden = Kunden.find(params[:id])
	  @projects = @kunden.projects
	   @kontakts = @kunden.kontakts
	end

	def edit
		  @kunden = Kunden.find(params[:id])
	end


	def update
	
		if @kunden.update(kunden_params)
			redirect_to kunden_path(@kunden)
		else
			render'edit'
		end
	end

  
private 
  def kunden_params 
    params.require(:kunden).permit(:firma, :strasse, :hausnummer, :postleitzahl, :stadt) 
  end 


def find_kunden

    @kunden = Kunden.find(params[:id])

end


end

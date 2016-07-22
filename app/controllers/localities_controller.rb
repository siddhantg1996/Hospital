class LocalitiesController < ApplicationController
before_action :find_locality, only: [:show, :edit, :update, :destroy]
def index
	@localities= Locality.all.order("created_at DESC")
end

def show


end


def new
@locality=Locality.new
end

def create
@locality=Locality.new( locality_params)
	if @locality.save
	redirect_to root_path
	else
	render 'new'
	end	 
end

def edit

end

def update
if @locality.update(locality_params)
	redirect_to locality_path(@locality)
else
	render 'edit'
	end
end

def destroy
	@locality.destroy
	redirect_to root_path

	end


private

def locality_params

params.require(:locality).permit(:locality_name, :hospital_name, :address)
end
def find_locality
@locality= Locality.find(params[:id]) 
end
end
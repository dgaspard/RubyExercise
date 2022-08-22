class MarticlesController < ApplicationController

        def show
          @marticle = Marticle.find(params[:id])       
        end

        def index
          @marticles = Marticle.all
        end

        def new
          @marticle = Marticle.new
        end

        def create
           @marticle = Marticle.new(params.require(:marticle).permit(:mtitle, :mdescription))
           if @marticle.save
                flash[:notice] = "Marticle was created successfully"
                redirect_to @marticle        
           else
                render 'new', status: :unprocessable_entity  
           end
        end
end

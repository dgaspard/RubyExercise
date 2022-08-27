class MarticlesController < ApplicationController

        before_action :set_marticle, only: [:show, :edit, :update, :destroy]

        def show
        end

        def index
          @marticles = Marticle.all
        end

        def new
          @marticle = Marticle.new
        end

        
        def edit
        end

        def create
           @marticle = Marticle.new(marticle_params)
           if @marticle.save
                flash[:notice] = "Marticle was created successfully"
                redirect_to @marticle        
           else
                render 'new', status: :unprocessable_entity  
           end
        end

        def update
          if @marticle.update(marticle_params)
            flash[:notice] = "Marticle was updated successfully"
            redirect_to @marticle
          else
            render 'edit', status: :unprocessable_entity 
          end
        end

        def destroy
          @marticle.destroy
          redirect_to marticles_path
        end

        private

        def set_marticle   
          @marticle = Marticle.find(params[:id])
        end

        def marticle_params 
          params.require(:marticle).permit(:mtitle, :mdescription)
        end
end

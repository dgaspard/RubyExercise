class MarticlesController < ApplicationController

        def show
          @marticle = Marticle.find(params[:id])       
        end
end

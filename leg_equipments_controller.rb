class LegEquipmentsController < ApplicationController
  def index
        @adminlegs = Adminleg.all
      end
    
      def edit
        @adminleg = Adminleg.find(params[:id])
      end
    
      def delete
        adminleg = Adminleg.find(params[:id])
        adminleg.destroy
        redirect_to '/adminlegs'
      end
    end
    


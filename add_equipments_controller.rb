class AddEquipmentsController < ApplicationController
    def new
    end
      
    def create
        equipments = Equipment.new(equipment_params)
      
        if equipment.save
            redirect_to root_path, notice: 'Equipment added successfully!'
        else
            render :new
        end
    end
      
    def equipment_params
        params.require(:equipments).permit(:name, :equip_class, :specs, :quantity, :price, :status)
    end
end

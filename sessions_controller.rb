# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = Tao.find_by(email: params["email"], password: params["password"])

    if @user
      redirect_to "/home", notice: 'Login successful!'

    else
      flash.now[:alert] = 'Invalid email or password'
      render 'new'
    end
  end

  def destroy
    redirect_to root_path, notice: 'Logged out successfully!'
  end

  def reg
  end

  def regi
    @user = Tao.new(name: params["name"],
      email: params["email"],
      password: params["password"])
  
      @user.save
      redirect_to "/login", notice: 'User was successfully created and logged in.'
  end

  def arm
    @equipments = Armequipment.all
  end

  def narm
  end

  def newarm
    @equipments = Armequipment.new(name: params["aname"],
                                  specs: params["specs"],
                                  quantity: params["qty"],
                                  price: params["price"],
                                  status: "Available")
      
    @equipments.save
    redirect_to "/admin_home/arm", notice: 'Equipment added successfully!'
  end

  def leg
    @data = LegEquipment.all
  end

  def nleg
  end

  def newleg
    @equipments = LegEquipment.new(name: params["aname"],
                                  specs: params["specs"],
                                  quantity: params["qty"],
                                  price: params["price"],
                                  status: "Available")
      
    @equipments.save
    redirect_to "/admin_home/leg", notice: 'Equipment added successfully!'
  end

  def other
  @data = Equipment.all # Assuming you have an Equipment model
  end

  def list
  end

end
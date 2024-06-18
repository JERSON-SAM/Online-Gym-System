class WorkoutPlansController < ApplicationController
    def new
    end
    
    def create
    @register = WorkoutPlan.new(exercise: params["exercise"], reps: params["reps"], sets: params["sets"], equip: params["equip"], time_in: params["time_in"], time_out: params["time_out"], date: params["date"])
    @register.save
    redirect_to "/home"
    end
      
        if @workout_plan
          redirect_to root_path, notice: 'Workout plan created successfully!'
        else
          render :new
        end
      
      
      private
      
      def workout_plan_params
        params.require(:workout_plan).permit(:exercise, :reps, :sets, :equip, :time_in,  :time_out, :out, :date)
      end
end

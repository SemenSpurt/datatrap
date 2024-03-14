class ObservationsController < ApplicationController
  def all
    @observations = Observation.all
  end 
  def new
    @patient = Patient.find(params[:patient_id])
    @observation = @patient.observation.new
  end   
  def create
    @patient = Patient.find(params[:patient_id])
    @observation = @patient.observation.new(params.permit(:observe_date))
    if @observation.save
      redirect_to patient_path(@patient)
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @observation = Observation.find(params[:id])
  end
  def update
    @observation = Observation.find(params[:id])
    if @observation.update(observation_params)
      render 'edit'
    end
  end
  private
    def observation_params
      params.require(:observation).permit!
    end
end

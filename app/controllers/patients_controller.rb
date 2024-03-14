class PatientsController < ApplicationController
  def all
    @patients = Patient.all
  end
  def new
    @patient = Patient.new
  end
  def show
    @patient = Patient.find(params[:id])
  end
  def create
    @patient = Patient.new(params.permit(:id, :fio))
    if @patient.save
      redirect_to patient_path(@patient)
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @patient = Patient.find(params[:id])
  end
  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end
  private
    def patient_params
      params.require(:patient).permit!
    end
end
class Maintenance::DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[ show edit update destroy ]

  # GET /maintenance/doctors or /maintenance/doctors.json
  def index
    @doctors = Doctor.all
  end

  # GET /maintenance/doctors/1 or /maintenance/doctors/1.json
  def show
  end

  # GET /maintenance/doctors/new
  def new
    @doctor = Doctor.new
  end

  # GET /maintenance/doctors/1/edit
  def edit
  end

  # POST /maintenance/doctors or /maintenance/doctors.json
  def create
    @doctor = Doctor.new(doctor_params)

    respond_to do |format|
      if @doctor.save
        format.html { redirect_to maintenance_doctor_path @doctor, notice: "Doctor was successfully created." }
        format.json { render :show, status: :created, location: @doctor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maintenance/doctors/1 or /maintenance/doctors/1.json
  def update
    respond_to do |format|
      if @doctor.update(doctor_params)
        format.html { redirect_to @doctor, notice: "Doctor was successfully updated." }
        format.json { render :show, status: :ok, location: @doctor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maintenance/doctors/1 or /maintenance/doctors/1.json
  def destroy
    @doctor.destroy
    respond_to do |format|
      format.html { redirect_to maintenance_doctors_url, notice: "Doctor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doctor_params
      params.require(:doctor).permit([:email, :password, :password_confirmation, :name, :specialty, :school, :phone])
    end
end

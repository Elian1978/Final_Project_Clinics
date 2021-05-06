class DoctorsController < ApplicationController
    
    before_action :set_doctor, only: %i[ show edit update destroy ]
    # before_action :authenticate_doctor!
    # GET /doctors or /doctors.json
    def index
      @doctors = Doctor.all
      @doctor= Doctor.new
    end
  
    # GET /doctors/1 or /doctors/1.json
    def show
      respond_to do |format|
      format.js { render layout: false }
      format.html { render :show }
      end
    end
  
    # GET /doctors/new
    def new
      @doctor = Doctor.new
    end
  
    # GET /doctors/1/edit
    def edit
    end
  
    # POST /doctors or /doctors.json
    def create
      @doctor = Doctor.new(doctor_params)
  
      respond_to do |format|
        if @doctor.save
          format.html { redirect_to @doctor, notice: "doctor was successfully created." }
          format.json { render :show, status: :created, location: @doctor }
          format.js
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @doctor.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /doctors/1 or /doctors/1.json
    def update
      respond_to do |format|
        if @doctor.update(doctor_params)
          format.html { redirect_to @doctor, notice: "doctor was successfully updated." }
          format.json { render :show, status: :ok, location: @doctor }
          format.js
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @doctor.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /doctors/1 or /doctors/1.json
    def destroy
      @doctor.destroy
      respond_to do |format|
        format.html { redirect_to doctors_url, notice: "doctor was successfully destroyed." }
        format.json { head :no_content }
        format.js
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_doctor
        @doctor = doctor.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def doctor_params
        params.require(:doctor).permit(:email, :password, :name, :specialty, :school, :language, :phone)
      end
  end
  
class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.all
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)
    # @service = Service.find(:service_id)
    
    respond_to do |format|
      if @patient.save
        format.html { redirect_to patients_path, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
   
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient.service, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_path, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # DELETEALL /patients.json
  def clear_all
    Patient.where(active?: true).each do |patient|
      patient.update_attributes(active?: false) 
    end
    respond_to do |format|
      format.html { redirect_to patients_path, notice: 'All patients were successfully cleared.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:room, :initials, :estimatedate, :ptnotified, :dcsumm, :medrec, :appt, :amlabs, :ptorder, :homeo2, :tubefeeds, :walker, :otherequip, :homecare, :snfpsych, :transport, :teaching, :finassit, :conciergerx, :completedbymd, :service_id, :ptrec, :noteToStaff)
    end
end

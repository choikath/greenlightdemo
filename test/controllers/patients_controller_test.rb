require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { amlabs: @patient.amlabs, appt: @patient.appt, completedbymd: @patient.completedbymd, conciergerx: @patient.conciergerx, dcsumm: @patient.dcsumm, estimatedate: @patient.estimatedate, finassit: @patient.finassit, homecare: @patient.homecare, homeo2: @patient.homeo2, initials: @patient.initials, medrec: @patient.medrec, otherequip: @patient.otherequip, ptnotified: @patient.ptnotified, ptorder: @patient.ptorder, room: @patient.room, snfpsych: @patient.snfpsych, teaching: @patient.teaching, transport: @patient.transport, tubefeeds: @patient.tubefeeds, walker: @patient.walker }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { amlabs: @patient.amlabs, appt: @patient.appt, completedbymd: @patient.completedbymd, conciergerx: @patient.conciergerx, dcsumm: @patient.dcsumm, estimatedate: @patient.estimatedate, finassit: @patient.finassit, homecare: @patient.homecare, homeo2: @patient.homeo2, initials: @patient.initials, medrec: @patient.medrec, otherequip: @patient.otherequip, ptnotified: @patient.ptnotified, ptorder: @patient.ptorder, room: @patient.room, snfpsych: @patient.snfpsych, teaching: @patient.teaching, transport: @patient.transport, tubefeeds: @patient.tubefeeds, walker: @patient.walker }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end

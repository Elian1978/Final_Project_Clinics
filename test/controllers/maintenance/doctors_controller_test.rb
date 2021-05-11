require "test_helper"

class Maintenance::DoctorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maintenance_doctor = maintenance_doctors(:one)
  end

  test "should get index" do
    get maintenance_doctors_url
    assert_response :success
  end

  test "should get new" do
    get new_maintenance_doctor_url
    assert_response :success
  end

  test "should create maintenance_doctor" do
    assert_difference('Maintenance::Doctor.count') do
      post maintenance_doctors_url, params: { maintenance_doctor: {  } }
    end

    assert_redirected_to maintenance_doctor_url(Maintenance::Doctor.last)
  end

  test "should show maintenance_doctor" do
    get maintenance_doctor_url(@maintenance_doctor)
    assert_response :success
  end

  test "should get edit" do
    get edit_maintenance_doctor_url(@maintenance_doctor)
    assert_response :success
  end

  test "should update maintenance_doctor" do
    patch maintenance_doctor_url(@maintenance_doctor), params: { maintenance_doctor: {  } }
    assert_redirected_to maintenance_doctor_url(@maintenance_doctor)
  end

  test "should destroy maintenance_doctor" do
    assert_difference('Maintenance::Doctor.count', -1) do
      delete maintenance_doctor_url(@maintenance_doctor)
    end

    assert_redirected_to maintenance_doctors_url
  end
end

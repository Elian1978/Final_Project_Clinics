require "application_system_test_case"

class Maintenance::DoctorsTest < ApplicationSystemTestCase
  setup do
    @maintenance_doctor = maintenance_doctors(:one)
  end

  test "visiting the index" do
    visit maintenance_doctors_url
    assert_selector "h1", text: "Maintenance/Doctors"
  end

  test "creating a Doctor" do
    visit maintenance_doctors_url
    click_on "New Maintenance/Doctor"

    click_on "Create Doctor"

    assert_text "Doctor was successfully created"
    click_on "Back"
  end

  test "updating a Doctor" do
    visit maintenance_doctors_url
    click_on "Edit", match: :first

    click_on "Update Doctor"

    assert_text "Doctor was successfully updated"
    click_on "Back"
  end

  test "destroying a Doctor" do
    visit maintenance_doctors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doctor was successfully destroyed"
  end
end

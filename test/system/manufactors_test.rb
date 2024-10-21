require "application_system_test_case"

class ManufactorsTest < ApplicationSystemTestCase
  setup do
    @manufactor = manufactors(:one)
  end

  test "visiting the index" do
    visit manufactors_url
    assert_selector "h1", text: "Manufactors"
  end

  test "should create manufactor" do
    visit manufactors_url
    click_on "New manufactor"

    fill_in "Manufactor", with: @manufactor.manufactor
    fill_in "Manufactorid", with: @manufactor.manufactorId
    click_on "Create Manufactor"

    assert_text "Manufactor was successfully created"
    click_on "Back"
  end

  test "should update Manufactor" do
    visit manufactor_url(@manufactor)
    click_on "Edit this manufactor", match: :first

    fill_in "Manufactor", with: @manufactor.manufactor
    fill_in "Manufactorid", with: @manufactor.manufactorId
    click_on "Update Manufactor"

    assert_text "Manufactor was successfully updated"
    click_on "Back"
  end

  test "should destroy Manufactor" do
    visit manufactor_url(@manufactor)
    click_on "Destroy this manufactor", match: :first

    assert_text "Manufactor was successfully destroyed"
  end
end

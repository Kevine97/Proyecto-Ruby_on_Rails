require "application_system_test_case"

class CinesTest < ApplicationSystemTestCase
  setup do
    @cine = cines(:one)
  end

  test "visiting the index" do
    visit cines_url
    assert_selector "h1", text: "Cines"
  end

  test "creating a Cine" do
    visit cines_url
    click_on "New Cine"

    fill_in "Name", with: @cine.name
    fill_in "Phone", with: @cine.phone
    click_on "Create Cine"

    assert_text "Cine was successfully created"
    click_on "Back"
  end

  test "updating a Cine" do
    visit cines_url
    click_on "Edit", match: :first

    fill_in "Name", with: @cine.name
    fill_in "Phone", with: @cine.phone
    click_on "Update Cine"

    assert_text "Cine was successfully updated"
    click_on "Back"
  end

  test "destroying a Cine" do
    visit cines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cine was successfully destroyed"
  end
end

require "application_system_test_case"

class MiningTypesTest < ApplicationSystemTestCase
  setup do
    @mining_type = mining_types(:one)
  end

  test "visiting the index" do
    visit mining_types_url
    assert_selector "h1", text: "Mining types"
  end

  test "should create mining type" do
    visit mining_types_url
    click_on "New mining type"

    fill_in "Acronym", with: @mining_type.acronym
    fill_in "Description", with: @mining_type.description
    click_on "Create Mining type"

    assert_text "Mining type was successfully created"
    click_on "Back"
  end

  test "should update Mining type" do
    visit mining_type_url(@mining_type)
    click_on "Edit this mining type", match: :first

    fill_in "Acronym", with: @mining_type.acronym
    fill_in "Description", with: @mining_type.description
    click_on "Update Mining type"

    assert_text "Mining type was successfully updated"
    click_on "Back"
  end

  test "should destroy Mining type" do
    visit mining_type_url(@mining_type)
    click_on "Destroy this mining type", match: :first

    assert_text "Mining type was successfully destroyed"
  end
end

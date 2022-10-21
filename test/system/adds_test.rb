require "application_system_test_case"

class AddsTest < ApplicationSystemTestCase
  setup do
    @add = adds(:one)
  end

  test "visiting the index" do
    visit adds_url
    assert_selector "h1", text: "Adds"
  end

  test "should create add" do
    visit adds_url
    click_on "New add"

    fill_in "Description", with: @add.description
    fill_in "Title", with: @add.title
    click_on "Create Add"

    assert_text "Add was successfully created"
    click_on "Back"
  end

  test "should update Add" do
    visit add_url(@add)
    click_on "Edit this add", match: :first

    fill_in "Description", with: @add.description
    fill_in "Title", with: @add.title
    click_on "Update Add"

    assert_text "Add was successfully updated"
    click_on "Back"
  end

  test "should destroy Add" do
    visit add_url(@add)
    click_on "Destroy this add", match: :first

    assert_text "Add was successfully destroyed"
  end
end

require "application_system_test_case"

class ContacsTest < ApplicationSystemTestCase
  setup do
    @contac = contacs(:one)
  end

  test "visiting the index" do
    visit contacs_url
    assert_selector "h1", text: "Contacs"
  end

  test "creating a Contac" do
    visit contacs_url
    click_on "New Contac"

    fill_in "Content", with: @contac.content
    fill_in "Email", with: @contac.email
    fill_in "Name", with: @contac.name
    click_on "Create Contac"

    assert_text "Contac was successfully created"
    click_on "Back"
  end

  test "updating a Contac" do
    visit contacs_url
    click_on "Edit", match: :first

    fill_in "Content", with: @contac.content
    fill_in "Email", with: @contac.email
    fill_in "Name", with: @contac.name
    click_on "Update Contac"

    assert_text "Contac was successfully updated"
    click_on "Back"
  end

  test "destroying a Contac" do
    visit contacs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contac was successfully destroyed"
  end
end

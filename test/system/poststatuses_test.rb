require "application_system_test_case"

class PoststatusesTest < ApplicationSystemTestCase
  setup do
    @poststatus = poststatuses(:one)
  end

  test "visiting the index" do
    visit poststatuses_url
    assert_selector "h1", text: "Poststatuses"
  end

  test "creating a Poststatus" do
    visit poststatuses_url
    click_on "New Poststatus"

    fill_in "Post State", with: @poststatus.post_state
    fill_in "Sermon", with: @poststatus.sermon_id
    click_on "Create Poststatus"

    assert_text "Poststatus was successfully created"
    click_on "Back"
  end

  test "updating a Poststatus" do
    visit poststatuses_url
    click_on "Edit", match: :first

    fill_in "Post State", with: @poststatus.post_state
    fill_in "Sermon", with: @poststatus.sermon_id
    click_on "Update Poststatus"

    assert_text "Poststatus was successfully updated"
    click_on "Back"
  end

  test "destroying a Poststatus" do
    visit poststatuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poststatus was successfully destroyed"
  end
end

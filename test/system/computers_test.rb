require "application_system_test_case"

class ComputersTest < ApplicationSystemTestCase
  setup do
    @computer = computers(:one)
  end

  test "visiting the index" do
    visit computers_url
    assert_selector "h1", text: "Computers"
  end

  test "creating a Computer" do
    visit computers_url
    click_on "New Computer"

    fill_in "Case", with: @computer.case
    fill_in "Cpu", with: @computer.cpu
    fill_in "Description", with: @computer.description
    fill_in "Finish", with: @computer.finish
    fill_in "Grpahics Card", with: @computer.grpahics_card
    fill_in "Hardrive", with: @computer.hardrive
    fill_in "Motherboard", with: @computer.motherboard
    fill_in "Power Supply", with: @computer.power_supply
    fill_in "Price", with: @computer.price
    fill_in "Ram", with: @computer.ram
    fill_in "Title", with: @computer.title
    click_on "Create Computer"

    assert_text "Computer was successfully created"
    click_on "Back"
  end

  test "updating a Computer" do
    visit computers_url
    click_on "Edit", match: :first

    fill_in "Case", with: @computer.case
    fill_in "Cpu", with: @computer.cpu
    fill_in "Description", with: @computer.description
    fill_in "Finish", with: @computer.finish
    fill_in "Grpahics Card", with: @computer.grpahics_card
    fill_in "Hardrive", with: @computer.hardrive
    fill_in "Motherboard", with: @computer.motherboard
    fill_in "Power Supply", with: @computer.power_supply
    fill_in "Price", with: @computer.price
    fill_in "Ram", with: @computer.ram
    fill_in "Title", with: @computer.title
    click_on "Update Computer"

    assert_text "Computer was successfully updated"
    click_on "Back"
  end

  test "destroying a Computer" do
    visit computers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Computer was successfully destroyed"
  end
end

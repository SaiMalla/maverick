require "application_system_test_case"

class TicketSubTypesTest < ApplicationSystemTestCase
  setup do
    @ticket_sub_type = ticket_sub_types(:one)
  end

  test "visiting the index" do
    visit ticket_sub_types_url
    assert_selector "h1", text: "Ticket Sub Types"
  end

  test "creating a Ticket sub type" do
    visit ticket_sub_types_url
    click_on "New Ticket Sub Type"

    fill_in "Active", with: @ticket_sub_type.active
    fill_in "Createdby", with: @ticket_sub_type.createdby
    fill_in "Ticket type", with: @ticket_sub_type.ticket_type_id
    fill_in "Ticketsubtype", with: @ticket_sub_type.ticketsubtype
    click_on "Create Ticket sub type"

    assert_text "Ticket sub type was successfully created"
    click_on "Back"
  end

  test "updating a Ticket sub type" do
    visit ticket_sub_types_url
    click_on "Edit", match: :first

    fill_in "Active", with: @ticket_sub_type.active
    fill_in "Createdby", with: @ticket_sub_type.createdby
    fill_in "Ticket type", with: @ticket_sub_type.ticket_type_id
    fill_in "Ticketsubtype", with: @ticket_sub_type.ticketsubtype
    click_on "Update Ticket sub type"

    assert_text "Ticket sub type was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket sub type" do
    visit ticket_sub_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket sub type was successfully destroyed"
  end
end

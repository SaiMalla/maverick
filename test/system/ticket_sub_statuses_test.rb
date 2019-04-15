require "application_system_test_case"

class TicketSubStatusesTest < ApplicationSystemTestCase
  setup do
    @ticket_sub_status = ticket_sub_statuses(:one)
  end

  test "visiting the index" do
    visit ticket_sub_statuses_url
    assert_selector "h1", text: "Ticket Sub Statuses"
  end

  test "creating a Ticket sub status" do
    visit ticket_sub_statuses_url
    click_on "New Ticket Sub Status"

    fill_in "Creatredby", with: @ticket_sub_status.creatredby
    fill_in "Ticket status", with: @ticket_sub_status.ticket_status_id
    fill_in "Ticketsubstatus", with: @ticket_sub_status.ticketsubstatus
    click_on "Create Ticket sub status"

    assert_text "Ticket sub status was successfully created"
    click_on "Back"
  end

  test "updating a Ticket sub status" do
    visit ticket_sub_statuses_url
    click_on "Edit", match: :first

    fill_in "Creatredby", with: @ticket_sub_status.creatredby
    fill_in "Ticket status", with: @ticket_sub_status.ticket_status_id
    fill_in "Ticketsubstatus", with: @ticket_sub_status.ticketsubstatus
    click_on "Update Ticket sub status"

    assert_text "Ticket sub status was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket sub status" do
    visit ticket_sub_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket sub status was successfully destroyed"
  end
end

require 'test_helper'

class TicketSubStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket_sub_status = ticket_sub_statuses(:one)
  end

  test "should get index" do
    get ticket_sub_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_sub_status_url
    assert_response :success
  end

  test "should create ticket_sub_status" do
    assert_difference('TicketSubStatus.count') do
      post ticket_sub_statuses_url, params: { ticket_sub_status: { creatredby: @ticket_sub_status.creatredby, ticket_status_id: @ticket_sub_status.ticket_status_id, ticketsubstatus: @ticket_sub_status.ticketsubstatus } }
    end

    assert_redirected_to ticket_sub_status_url(TicketSubStatus.last)
  end

  test "should show ticket_sub_status" do
    get ticket_sub_status_url(@ticket_sub_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_sub_status_url(@ticket_sub_status)
    assert_response :success
  end

  test "should update ticket_sub_status" do
    patch ticket_sub_status_url(@ticket_sub_status), params: { ticket_sub_status: { creatredby: @ticket_sub_status.creatredby, ticket_status_id: @ticket_sub_status.ticket_status_id, ticketsubstatus: @ticket_sub_status.ticketsubstatus } }
    assert_redirected_to ticket_sub_status_url(@ticket_sub_status)
  end

  test "should destroy ticket_sub_status" do
    assert_difference('TicketSubStatus.count', -1) do
      delete ticket_sub_status_url(@ticket_sub_status)
    end

    assert_redirected_to ticket_sub_statuses_url
  end
end

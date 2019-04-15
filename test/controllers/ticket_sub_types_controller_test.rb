require 'test_helper'

class TicketSubTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket_sub_type = ticket_sub_types(:one)
  end

  test "should get index" do
    get ticket_sub_types_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_sub_type_url
    assert_response :success
  end

  test "should create ticket_sub_type" do
    assert_difference('TicketSubType.count') do
      post ticket_sub_types_url, params: { ticket_sub_type: { active: @ticket_sub_type.active, createdby: @ticket_sub_type.createdby, ticket_type_id: @ticket_sub_type.ticket_type_id, ticketsubtype: @ticket_sub_type.ticketsubtype } }
    end

    assert_redirected_to ticket_sub_type_url(TicketSubType.last)
  end

  test "should show ticket_sub_type" do
    get ticket_sub_type_url(@ticket_sub_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_sub_type_url(@ticket_sub_type)
    assert_response :success
  end

  test "should update ticket_sub_type" do
    patch ticket_sub_type_url(@ticket_sub_type), params: { ticket_sub_type: { active: @ticket_sub_type.active, createdby: @ticket_sub_type.createdby, ticket_type_id: @ticket_sub_type.ticket_type_id, ticketsubtype: @ticket_sub_type.ticketsubtype } }
    assert_redirected_to ticket_sub_type_url(@ticket_sub_type)
  end

  test "should destroy ticket_sub_type" do
    assert_difference('TicketSubType.count', -1) do
      delete ticket_sub_type_url(@ticket_sub_type)
    end

    assert_redirected_to ticket_sub_types_url
  end
end

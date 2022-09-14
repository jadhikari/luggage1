require "test_helper"

class CheckInsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @check_in = check_ins(:one)
  end

  test "should get index" do
    get check_ins_url
    assert_response :success
  end

  test "should get new" do
    get new_check_in_url
    assert_response :success
  end

  test "should create check_in" do
    assert_difference("CheckIn.count") do
      post check_ins_url, params: { check_in: { checkout_by: @check_in.checkout_by, checkout_date_time: @check_in.checkout_date_time, luggage_num: @check_in.luggage_num, name: @check_in.name, people_num: @check_in.people_num, received_by: @check_in.received_by, received_date_time: @check_in.received_date_time, remarks: @check_in.remarks, room_num: @check_in.room_num } }
    end

    assert_redirected_to check_in_url(CheckIn.last)
  end

  test "should show check_in" do
    get check_in_url(@check_in)
    assert_response :success
  end

  test "should get edit" do
    get edit_check_in_url(@check_in)
    assert_response :success
  end

  test "should update check_in" do
    patch check_in_url(@check_in), params: { check_in: { checkout_by: @check_in.checkout_by, checkout_date_time: @check_in.checkout_date_time, luggage_num: @check_in.luggage_num, name: @check_in.name, people_num: @check_in.people_num, received_by: @check_in.received_by, received_date_time: @check_in.received_date_time, remarks: @check_in.remarks, room_num: @check_in.room_num } }
    assert_redirected_to check_in_url(@check_in)
  end

  test "should destroy check_in" do
    assert_difference("CheckIn.count", -1) do
      delete check_in_url(@check_in)
    end

    assert_redirected_to check_ins_url
  end
end

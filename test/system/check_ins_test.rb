require "application_system_test_case"

class CheckInsTest < ApplicationSystemTestCase
  setup do
    @check_in = check_ins(:one)
  end

  test "visiting the index" do
    visit check_ins_url
    assert_selector "h1", text: "Check ins"
  end

  test "should create check in" do
    visit check_ins_url
    click_on "New check in"

    fill_in "Checkout by", with: @check_in.checkout_by
    fill_in "Checkout date time", with: @check_in.checkout_date_time
    fill_in "Luggage num", with: @check_in.luggage_num
    fill_in "Name", with: @check_in.name
    fill_in "People num", with: @check_in.people_num
    fill_in "Received by", with: @check_in.received_by
    fill_in "Received date time", with: @check_in.received_date_time
    fill_in "Remarks", with: @check_in.remarks
    fill_in "Room num", with: @check_in.room_num
    click_on "Create Check in"

    assert_text "Check in was successfully created"
    click_on "Back"
  end

  test "should update Check in" do
    visit check_in_url(@check_in)
    click_on "Edit this check in", match: :first

    fill_in "Checkout by", with: @check_in.checkout_by
    fill_in "Checkout date time", with: @check_in.checkout_date_time
    fill_in "Luggage num", with: @check_in.luggage_num
    fill_in "Name", with: @check_in.name
    fill_in "People num", with: @check_in.people_num
    fill_in "Received by", with: @check_in.received_by
    fill_in "Received date time", with: @check_in.received_date_time
    fill_in "Remarks", with: @check_in.remarks
    fill_in "Room num", with: @check_in.room_num
    click_on "Update Check in"

    assert_text "Check in was successfully updated"
    click_on "Back"
  end

  test "should destroy Check in" do
    visit check_in_url(@check_in)
    click_on "Destroy this check in", match: :first

    assert_text "Check in was successfully destroyed"
  end
end

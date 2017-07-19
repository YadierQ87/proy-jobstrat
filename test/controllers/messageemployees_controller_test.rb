require 'test_helper'

class MessageemployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @messageemployee = messageemployees(:one)
  end

  test "should get index" do
    get messageemployees_url
    assert_response :success
  end

  test "should get new" do
    get new_messageemployee_url
    assert_response :success
  end

  test "should create messageemployee" do
    assert_difference('Messageemployee.count') do
      post messageemployees_url, params: { messageemployee: { company_id: @messageemployee.company_id, employee_id: @messageemployee.employee_id, mail: @messageemployee.mail } }
    end

    assert_redirected_to messageemployee_url(Messageemployee.last)
  end

  test "should show messageemployee" do
    get messageemployee_url(@messageemployee)
    assert_response :success
  end

  test "should get edit" do
    get edit_messageemployee_url(@messageemployee)
    assert_response :success
  end

  test "should update messageemployee" do
    patch messageemployee_url(@messageemployee), params: { messageemployee: { company_id: @messageemployee.company_id, employee_id: @messageemployee.employee_id, mail: @messageemployee.mail } }
    assert_redirected_to messageemployee_url(@messageemployee)
  end

  test "should destroy messageemployee" do
    assert_difference('Messageemployee.count', -1) do
      delete messageemployee_url(@messageemployee)
    end

    assert_redirected_to messageemployees_url
  end
end

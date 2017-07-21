require 'test_helper'

class InformationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get information_index_url
    assert_response :success
  end

  test "should get jobs" do
    get information_jobs_url
    assert_response :success
  end

  test "should get employees" do
    get information_employees_url
    assert_response :success
  end

  test "should get companies" do
    get information_companies_url
    assert_response :success
  end

  test "should get categories" do
    get information_categories_url
    assert_response :success
  end

  test "should get messages" do
    get information_messages_url
    assert_response :success
  end

  test "should get usersettings" do
    get information_usersettings_url
    assert_response :success
  end

  test "should get aplicationsms" do
    get information_aplicationsms_url
    assert_response :success
  end

end

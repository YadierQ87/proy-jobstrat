require 'test_helper'

class AdministrationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get administration_index_url
    assert_response :success
  end

  test "should get jobs" do
    get administration_jobs_url
    assert_response :success
  end

  test "should get employees" do
    get administration_employees_url
    assert_response :success
  end

  test "should get companies" do
    get administration_companies_url
    assert_response :success
  end

  test "should get categories" do
    get administration_categories_url
    assert_response :success
  end

end

require 'test_helper'

class AplicationjobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aplicationjob = aplicationjobs(:one)
  end

  test "should get index" do
    get aplicationjobs_url
    assert_response :success
  end

  test "should get new" do
    get new_aplicationjob_url
    assert_response :success
  end

  test "should create aplicationjob" do
    assert_difference('Aplicationjob.count') do
      post aplicationjobs_url, params: { aplicationjob: { description: @aplicationjob.description, employee_id: @aplicationjob.employee_id, job_id: @aplicationjob.job_id } }
    end

    assert_redirected_to aplicationjob_url(Aplicationjob.last)
  end

  test "should show aplicationjob" do
    get aplicationjob_url(@aplicationjob)
    assert_response :success
  end

  test "should get edit" do
    get edit_aplicationjob_url(@aplicationjob)
    assert_response :success
  end

  test "should update aplicationjob" do
    patch aplicationjob_url(@aplicationjob), params: { aplicationjob: { description: @aplicationjob.description, employee_id: @aplicationjob.employee_id, job_id: @aplicationjob.job_id } }
    assert_redirected_to aplicationjob_url(@aplicationjob)
  end

  test "should destroy aplicationjob" do
    assert_difference('Aplicationjob.count', -1) do
      delete aplicationjob_url(@aplicationjob)
    end

    assert_redirected_to aplicationjobs_url
  end
end

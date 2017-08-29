require 'test_helper'

class JobTest < ActiveSupport::TestCase

  test "guardar_job_sin_description" do
    job1 = Job.new({  title: Faker::Job.title,                       m_country_id: Random.rand(1...3),                       active: Faker::Boolean,
                       category_id:Random.rand(1...8),                  company_id: Random.rand(1...20) })
    assert job1.save
  end

  test "should_report_error" do
    # some_undefined_variable is not defined elsewhere in the test case
    assert_raises(NameError) do
      some_undefined_variable
    end
  end



end

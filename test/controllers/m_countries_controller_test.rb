require 'test_helper'

class MCountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @m_country = m_countries(:one)
  end

  test "should get index" do
    get m_countries_url
    assert_response :success
  end

  test "should get new" do
    get new_m_country_url
    assert_response :success
  end

  test "should create m_country" do
    assert_difference('MCountry.count') do
      post m_countries_url, params: { m_country: { ncountry: @m_country.ncountry } }
    end

    assert_redirected_to m_country_url(MCountry.last)
  end

  test "should show m_country" do
    get m_country_url(@m_country)
    assert_response :success
  end

  test "should get edit" do
    get edit_m_country_url(@m_country)
    assert_response :success
  end

  test "should update m_country" do
    patch m_country_url(@m_country), params: { m_country: { ncountry: @m_country.ncountry } }
    assert_redirected_to m_country_url(@m_country)
  end

  test "should destroy m_country" do
    assert_difference('MCountry.count', -1) do
      delete m_country_url(@m_country)
    end

    assert_redirected_to m_countries_url
  end
end

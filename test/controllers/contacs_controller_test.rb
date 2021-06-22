require 'test_helper'

class ContacsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contac = contacs(:one)
  end

  test "should get index" do
    get contacs_url
    assert_response :success
  end

  test "should get new" do
    get new_contac_url
    assert_response :success
  end

  test "should create contac" do
    assert_difference('Contac.count') do
      post contacs_url, params: { contac: { content: @contac.content, email: @contac.email, name: @contac.name } }
    end

    assert_redirected_to contac_url(Contac.last)
  end

  test "should show contac" do
    get contac_url(@contac)
    assert_response :success
  end

  test "should get edit" do
    get edit_contac_url(@contac)
    assert_response :success
  end

  test "should update contac" do
    patch contac_url(@contac), params: { contac: { content: @contac.content, email: @contac.email, name: @contac.name } }
    assert_redirected_to contac_url(@contac)
  end

  test "should destroy contac" do
    assert_difference('Contac.count', -1) do
      delete contac_url(@contac)
    end

    assert_redirected_to contacs_url
  end
end

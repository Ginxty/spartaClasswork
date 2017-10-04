require 'test_helper'

class ArtsistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artsist = artsists(:one)
  end

  test "should get index" do
    get artsists_url
    assert_response :success
  end

  test "should get new" do
    get new_artsist_url
    assert_response :success
  end

  test "should create artsist" do
    assert_difference('Artsist.count') do
      post artsists_url, params: { artsist: { name: @artsist.name, songs: @artsist.songs } }
    end

    assert_redirected_to artsist_url(Artsist.last)
  end

  test "should show artsist" do
    get artsist_url(@artsist)
    assert_response :success
  end

  test "should get edit" do
    get edit_artsist_url(@artsist)
    assert_response :success
  end

  test "should update artsist" do
    patch artsist_url(@artsist), params: { artsist: { name: @artsist.name, songs: @artsist.songs } }
    assert_redirected_to artsist_url(@artsist)
  end

  test "should destroy artsist" do
    assert_difference('Artsist.count', -1) do
      delete artsist_url(@artsist)
    end

    assert_redirected_to artsists_url
  end
end

require 'test_helper'

class GrantedWishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @granted_wish = granted_wishes(:one)
  end

  test "should get index" do
    get granted_wishes_url
    assert_response :success
  end

  test "should get new" do
    get new_granted_wish_url
    assert_response :success
  end

  test "should create granted_wish" do
    assert_difference('GrantedWish.count') do
      post granted_wishes_url, params: { granted_wish: { fulfillment: @granted_wish.fulfillment, info: @granted_wish.info, requirement: @granted_wish.requirement, winner: @granted_wish.winner } }
    end

    assert_redirected_to granted_wish_url(GrantedWish.last)
  end

  test "should show granted_wish" do
    get granted_wish_url(@granted_wish)
    assert_response :success
  end

  test "should get edit" do
    get edit_granted_wish_url(@granted_wish)
    assert_response :success
  end

  test "should update granted_wish" do
    patch granted_wish_url(@granted_wish), params: { granted_wish: { fulfillment: @granted_wish.fulfillment, info: @granted_wish.info, requirement: @granted_wish.requirement, winner: @granted_wish.winner } }
    assert_redirected_to granted_wish_url(@granted_wish)
  end

  test "should destroy granted_wish" do
    assert_difference('GrantedWish.count', -1) do
      delete granted_wish_url(@granted_wish)
    end

    assert_redirected_to granted_wishes_url
  end
end

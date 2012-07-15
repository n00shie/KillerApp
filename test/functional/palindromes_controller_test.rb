require 'test_helper'

class PalindromesControllerTest < ActionController::TestCase
  setup do
    @palindrome = palindromes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:palindromes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create palindrome" do
    assert_difference('Palindrome.count') do
      post :create, palindrome: {  }
    end

    assert_redirected_to palindrome_path(assigns(:palindrome))
  end

  test "should show palindrome" do
    get :show, id: @palindrome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @palindrome
    assert_response :success
  end

  test "should update palindrome" do
    put :update, id: @palindrome, palindrome: {  }
    assert_redirected_to palindrome_path(assigns(:palindrome))
  end

  test "should destroy palindrome" do
    assert_difference('Palindrome.count', -1) do
      delete :destroy, id: @palindrome
    end

    assert_redirected_to palindromes_path
  end
end

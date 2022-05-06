require "test_helper"

class LoginFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @login_form = login_forms(:one)
  end

  test "should get index" do
    get login_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_login_form_url
    assert_response :success
  end

  test "should create login_form" do
    assert_difference("LoginForm.count") do
      post login_forms_url, params: { login_form: { Class: @login_form.Class, Password: @login_form.Password, User_Name: @login_form.User_Name } }
    end

    assert_redirected_to login_form_url(LoginForm.last)
  end

  test "should show login_form" do
    get login_form_url(@login_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_login_form_url(@login_form)
    assert_response :success
  end

  test "should update login_form" do
    patch login_form_url(@login_form), params: { login_form: { Class: @login_form.Class, Password: @login_form.Password, User_Name: @login_form.User_Name } }
    assert_redirected_to login_form_url(@login_form)
  end

  test "should destroy login_form" do
    assert_difference("LoginForm.count", -1) do
      delete login_form_url(@login_form)
    end

    assert_redirected_to login_forms_url
  end
end

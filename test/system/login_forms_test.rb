require "application_system_test_case"

class LoginFormsTest < ApplicationSystemTestCase
  setup do
    @login_form = login_forms(:one)
  end

  test "visiting the index" do
    visit login_forms_url
    assert_selector "h1", text: "Login forms"
  end

  test "should create login form" do
    visit login_forms_url
    click_on "New login form"

    fill_in "Class", with: @login_form.Class
    fill_in "Password", with: @login_form.Password
    fill_in "User name", with: @login_form.User_Name
    click_on "Create Login form"

    assert_text "Login form was successfully created"
    click_on "Back"
  end

  test "should update Login form" do
    visit login_form_url(@login_form)
    click_on "Edit this login form", match: :first

    fill_in "Class", with: @login_form.Class
    fill_in "Password", with: @login_form.Password
    fill_in "User name", with: @login_form.User_Name
    click_on "Update Login form"

    assert_text "Login form was successfully updated"
    click_on "Back"
  end

  test "should destroy Login form" do
    visit login_form_url(@login_form)
    click_on "Destroy this login form", match: :first

    assert_text "Login form was successfully destroyed"
  end
end

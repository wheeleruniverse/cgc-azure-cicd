require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      first_name: "MyString",
      last_name: "MyString",
      address_line1: "MyString",
      address_line2: "MyString",
      city: "MyString",
      state: "MyString",
      zip: "MyString",
      photo_url: "MyString",
      voice_url: "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[first_name]"

      assert_select "input[name=?]", "user[last_name]"

      assert_select "input[name=?]", "user[address_line1]"

      assert_select "input[name=?]", "user[address_line2]"

      assert_select "input[name=?]", "user[city]"

      assert_select "input[name=?]", "user[state]"

      assert_select "input[name=?]", "user[zip]"

      assert_select "input[name=?]", "user[photo_url]"

      assert_select "input[name=?]", "user[voice_url]"
    end
  end
end

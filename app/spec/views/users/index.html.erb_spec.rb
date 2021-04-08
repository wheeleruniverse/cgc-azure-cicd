require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        first_name: "First Name",
        last_name: "Last Name",
        address_line1: "Address Line1",
        address_line2: "Address Line2",
        city: "City",
        state: "State",
        zip: "Zip",
        photo_url: "Photo Url",
        voice_url: "Voice Url"
      ),
      User.create!(
        first_name: "First Name",
        last_name: "Last Name",
        address_line1: "Address Line1",
        address_line2: "Address Line2",
        city: "City",
        state: "State",
        zip: "Zip",
        photo_url: "Photo Url",
        voice_url: "Voice Url"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Address Line1".to_s, count: 2
    assert_select "tr>td", text: "Address Line2".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: "State".to_s, count: 2
    assert_select "tr>td", text: "Zip".to_s, count: 2
    assert_select "tr>td", text: "Photo Url".to_s, count: 2
    assert_select "tr>td", text: "Voice Url".to_s, count: 2
  end
end

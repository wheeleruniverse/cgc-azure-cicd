require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      first_name: "First Name",
      last_name: "Last Name",
      address_line1: "Address Line1",
      address_line2: "Address Line2",
      city: "City",
      state: "State",
      zip: "Zip",
      photo_url: "Photo Url",
      voice_url: "Voice Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Address Line1/)
    expect(rendered).to match(/Address Line2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Photo Url/)
    expect(rendered).to match(/Voice Url/)
  end
end

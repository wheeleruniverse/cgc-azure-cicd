require 'rails_helper'

RSpec.describe User, :type => :model do
  it "is valid with valid attributes" do
    user = User.new(first_name: 'Justin', last_name: 'Wheeler', address_line1: '1 Test Way', city: 'TestVille', state: 'FL', zip: '33637')
    expect(user).to be_valid
  end
  it "is not valid without a first_name" do
    user = User.new(last_name: 'Wheeler', address_line1: '1 Test Way', city: 'TestVille', state: 'FL', zip: '33637')
    expect(user).to_not be_valid
  end
  it "is not valid without a last_name" do
    user = User.new(first_name: 'Justin', address_line1: '1 Test Way', city: 'TestVille', state: 'FL', zip: '33637')
    expect(user).to_not be_valid
  end
  it "is not valid without a address_line1" do
    user = User.new(first_name: 'Justin', last_name: 'Wheeler', city: 'TestVille', state: 'FL', zip: '33637')
    expect(user).to_not be_valid
  end
  it "is not valid without a city" do
    user = User.new(first_name: 'Justin', last_name: 'Wheeler', address_line1: '1 Test Way', state: 'FL', zip: '33637')
    expect(user).to_not be_valid
  end
  it "is not valid without a state" do
    user = User.new(first_name: 'Justin', last_name: 'Wheeler', address_line1: '1 Test Way', city: 'TestVille', zip: '33637')
    expect(user).to_not be_valid
  end
  it "is not valid without a zip" do
    user = User.new(first_name: 'Justin', last_name: 'Wheeler', address_line1: '1 Test Way', city: 'TestVille', state: 'FL')
    expect(user).to_not be_valid
  end
end


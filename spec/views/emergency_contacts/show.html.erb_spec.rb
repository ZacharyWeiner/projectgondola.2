require 'rails_helper'

RSpec.describe "emergency_contacts/show", type: :view do
  before(:each) do
    @emergency_contact = assign(:emergency_contact, EmergencyContact.create!(
      :name => "Name",
      :relationship => "Relationship",
      :phone_number => "Phone Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Relationship/)
    expect(rendered).to match(/Phone Number/)
  end
end

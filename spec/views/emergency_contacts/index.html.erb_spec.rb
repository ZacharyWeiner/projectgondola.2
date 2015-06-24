require 'rails_helper'

RSpec.describe "emergency_contacts/index", type: :view do
  before(:each) do
    assign(:emergency_contacts, [
      EmergencyContact.create!(
        :name => "Name",
        :relationship => "Relationship",
        :phone_number => "Phone Number"
      ),
      EmergencyContact.create!(
        :name => "Name",
        :relationship => "Relationship",
        :phone_number => "Phone Number"
      )
    ])
  end

  it "renders a list of emergency_contacts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Relationship".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
  end
end

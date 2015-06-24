require 'rails_helper'

RSpec.describe "emergency_contacts/edit", type: :view do
  before(:each) do
    @emergency_contact = assign(:emergency_contact, EmergencyContact.create!(
      :name => "MyString",
      :relationship => "MyString",
      :phone_number => "MyString"
    ))
  end

  it "renders the edit emergency_contact form" do
    render

    assert_select "form[action=?][method=?]", emergency_contact_path(@emergency_contact), "post" do

      assert_select "input#emergency_contact_name[name=?]", "emergency_contact[name]"

      assert_select "input#emergency_contact_relationship[name=?]", "emergency_contact[relationship]"

      assert_select "input#emergency_contact_phone_number[name=?]", "emergency_contact[phone_number]"
    end
  end
end

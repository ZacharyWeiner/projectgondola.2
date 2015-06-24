require 'rails_helper'

RSpec.describe "emergency_contacts/new", type: :view do
  before(:each) do
    assign(:emergency_contact, EmergencyContact.new(
      :name => "MyString",
      :relationship => "MyString",
      :phone_number => "MyString"
    ))
  end

  it "renders new emergency_contact form" do
    render

    assert_select "form[action=?][method=?]", emergency_contacts_path, "post" do

      assert_select "input#emergency_contact_name[name=?]", "emergency_contact[name]"

      assert_select "input#emergency_contact_relationship[name=?]", "emergency_contact[relationship]"

      assert_select "input#emergency_contact_phone_number[name=?]", "emergency_contact[phone_number]"
    end
  end
end

require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :street_number => "MyString",
      :street_name => "MyString",
      :unit => "MyString",
      :address_type => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :full_street_address => "MyString",
      :map_grid => "MyString",
      :latitude => "MyString",
      :longitude => "MyString",
      :company_info => nil,
      :emergency_contact => nil,
      :work_order => nil
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input#address_street_number[name=?]", "address[street_number]"

      assert_select "input#address_street_name[name=?]", "address[street_name]"

      assert_select "input#address_unit[name=?]", "address[unit]"

      assert_select "input#address_address_type[name=?]", "address[address_type]"

      assert_select "input#address_city[name=?]", "address[city]"

      assert_select "input#address_state[name=?]", "address[state]"

      assert_select "input#address_zip[name=?]", "address[zip]"

      assert_select "input#address_full_street_address[name=?]", "address[full_street_address]"

      assert_select "input#address_map_grid[name=?]", "address[map_grid]"

      assert_select "input#address_latitude[name=?]", "address[latitude]"

      assert_select "input#address_longitude[name=?]", "address[longitude]"

      assert_select "input#address_company_info_id[name=?]", "address[company_info_id]"

      assert_select "input#address_emergency_contact_id[name=?]", "address[emergency_contact_id]"

      assert_select "input#address_work_order_id[name=?]", "address[work_order_id]"
    end
  end
end

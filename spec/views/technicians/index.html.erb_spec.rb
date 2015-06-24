require 'rails_helper'

RSpec.describe "technicians/index", type: :view do
  before(:each) do
    assign(:technicians, [
      Technician.create!(
        :mso_tech_id => "Mso Tech",
        :gchat_id => "Gchat",
        :is_active => false,
        :home_phone => "Home Phone",
        :cell_phone => "Cell Phone",
        :internal_tech_id => "Internal Tech",
        :company_info => nil
      ),
      Technician.create!(
        :mso_tech_id => "Mso Tech",
        :gchat_id => "Gchat",
        :is_active => false,
        :home_phone => "Home Phone",
        :cell_phone => "Cell Phone",
        :internal_tech_id => "Internal Tech",
        :company_info => nil
      )
    ])
  end

  it "renders a list of technicians" do
    render
    assert_select "tr>td", :text => "Mso Tech".to_s, :count => 2
    assert_select "tr>td", :text => "Gchat".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Home Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Cell Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Internal Tech".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

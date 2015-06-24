require 'rails_helper'

RSpec.describe "work_order_details/index", type: :view do
  before(:each) do
    assign(:work_order_details, [
      WorkOrderDetail.create!(
        :smsid => "Smsid",
        :buid => "Buid",
        :sms => "Sms",
        :contact_phone_number => "Contact Phone Number",
        :business_unit => "Business Unit",
        :versionid => "Versionid",
        :tzi => "Tzi",
        :fsruserid => "Fsruserid",
        :fsrbuid => "Fsrbuid",
        :previous_fsr_buid => "Previous Fsr Buid",
        :dispatcher_id => "Dispatcher",
        :key1 => "Key1",
        :problem_code => "Problem Code",
        :key2 => "Key2",
        :jobtype => "Jobtype",
        :jobclass => "Jobclass",
        :tech_completed => "Tech Completed",
        :compliance => "Compliance",
        :customer_id2 => "Customer Id2",
        :pricing_category => "Pricing Category",
        :pricing_category_description => "Pricing Category Description",
        :campaign_code => "Campaign Code",
        :campaign_code_description => "Campaign Code Description",
        :customer_status => "Customer Status",
        :customer_status_description => "Customer Status Description",
        :customer_info1 => "Customer Info1",
        :customer_info2 => "Customer Info2",
        :customer_info3 => "Customer Info3",
        :customer_info4 => "Customer Info4",
        :customer_info5 => "Customer Info5",
        :building_type => "Building Type",
        :building_type_description => "Building Type Description",
        :deliminated_address => "Deliminated Address",
        :coding_quality => "Coding Quality",
        :location_id => "Location",
        :location_info1 => "Location Info1",
        :location_info2 => "Location Info2",
        :location_info3 => "Location Info3",
        :location_info4 => "Location Info4",
        :location_info5 => "Location Info5",
        :monthly_charge => "Monthly Charge",
        :job_points => "Job Points",
        :total_bablace_due => "Total Bablace Due",
        :ordering_operator_id => "Ordering Operator",
        :contact_name => "Contact Name",
        :contact_phone1 => "Contact Phone1",
        :contact_phone2 => "Contact Phone2",
        :drop_location => "Drop Location",
        :tag_id => "Tag",
        :house_status => "House Status",
        :quota_group => "Quota Group",
        :quota_area => "Quota Area",
        :detail_text1 => "Detail Text1",
        :detail_text2 => "Detail Text2",
        :detail_text3 => "Detail Text3",
        :detail_text4 => "Detail Text4",
        :detail_text5 => "Detail Text5",
        :sms_job_number => "Sms Job Number",
        :assigning_operator_id => "Assigning Operator",
        :repeat => "Repeat",
        :repeat_count => "Repeat Count",
        :node_id => "Node",
        :tech_business_unit => "Tech Business Unit",
        :work_order => nil
      ),
      WorkOrderDetail.create!(
        :smsid => "Smsid",
        :buid => "Buid",
        :sms => "Sms",
        :contact_phone_number => "Contact Phone Number",
        :business_unit => "Business Unit",
        :versionid => "Versionid",
        :tzi => "Tzi",
        :fsruserid => "Fsruserid",
        :fsrbuid => "Fsrbuid",
        :previous_fsr_buid => "Previous Fsr Buid",
        :dispatcher_id => "Dispatcher",
        :key1 => "Key1",
        :problem_code => "Problem Code",
        :key2 => "Key2",
        :jobtype => "Jobtype",
        :jobclass => "Jobclass",
        :tech_completed => "Tech Completed",
        :compliance => "Compliance",
        :customer_id2 => "Customer Id2",
        :pricing_category => "Pricing Category",
        :pricing_category_description => "Pricing Category Description",
        :campaign_code => "Campaign Code",
        :campaign_code_description => "Campaign Code Description",
        :customer_status => "Customer Status",
        :customer_status_description => "Customer Status Description",
        :customer_info1 => "Customer Info1",
        :customer_info2 => "Customer Info2",
        :customer_info3 => "Customer Info3",
        :customer_info4 => "Customer Info4",
        :customer_info5 => "Customer Info5",
        :building_type => "Building Type",
        :building_type_description => "Building Type Description",
        :deliminated_address => "Deliminated Address",
        :coding_quality => "Coding Quality",
        :location_id => "Location",
        :location_info1 => "Location Info1",
        :location_info2 => "Location Info2",
        :location_info3 => "Location Info3",
        :location_info4 => "Location Info4",
        :location_info5 => "Location Info5",
        :monthly_charge => "Monthly Charge",
        :job_points => "Job Points",
        :total_bablace_due => "Total Bablace Due",
        :ordering_operator_id => "Ordering Operator",
        :contact_name => "Contact Name",
        :contact_phone1 => "Contact Phone1",
        :contact_phone2 => "Contact Phone2",
        :drop_location => "Drop Location",
        :tag_id => "Tag",
        :house_status => "House Status",
        :quota_group => "Quota Group",
        :quota_area => "Quota Area",
        :detail_text1 => "Detail Text1",
        :detail_text2 => "Detail Text2",
        :detail_text3 => "Detail Text3",
        :detail_text4 => "Detail Text4",
        :detail_text5 => "Detail Text5",
        :sms_job_number => "Sms Job Number",
        :assigning_operator_id => "Assigning Operator",
        :repeat => "Repeat",
        :repeat_count => "Repeat Count",
        :node_id => "Node",
        :tech_business_unit => "Tech Business Unit",
        :work_order => nil
      )
    ])
  end

  it "renders a list of work_order_details" do
    render
    assert_select "tr>td", :text => "Smsid".to_s, :count => 2
    assert_select "tr>td", :text => "Buid".to_s, :count => 2
    assert_select "tr>td", :text => "Sms".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Business Unit".to_s, :count => 2
    assert_select "tr>td", :text => "Versionid".to_s, :count => 2
    assert_select "tr>td", :text => "Tzi".to_s, :count => 2
    assert_select "tr>td", :text => "Fsruserid".to_s, :count => 2
    assert_select "tr>td", :text => "Fsrbuid".to_s, :count => 2
    assert_select "tr>td", :text => "Previous Fsr Buid".to_s, :count => 2
    assert_select "tr>td", :text => "Dispatcher".to_s, :count => 2
    assert_select "tr>td", :text => "Key1".to_s, :count => 2
    assert_select "tr>td", :text => "Problem Code".to_s, :count => 2
    assert_select "tr>td", :text => "Key2".to_s, :count => 2
    assert_select "tr>td", :text => "Jobtype".to_s, :count => 2
    assert_select "tr>td", :text => "Jobclass".to_s, :count => 2
    assert_select "tr>td", :text => "Tech Completed".to_s, :count => 2
    assert_select "tr>td", :text => "Compliance".to_s, :count => 2
    assert_select "tr>td", :text => "Customer Id2".to_s, :count => 2
    assert_select "tr>td", :text => "Pricing Category".to_s, :count => 2
    assert_select "tr>td", :text => "Pricing Category Description".to_s, :count => 2
    assert_select "tr>td", :text => "Campaign Code".to_s, :count => 2
    assert_select "tr>td", :text => "Campaign Code Description".to_s, :count => 2
    assert_select "tr>td", :text => "Customer Status".to_s, :count => 2
    assert_select "tr>td", :text => "Customer Status Description".to_s, :count => 2
    assert_select "tr>td", :text => "Customer Info1".to_s, :count => 2
    assert_select "tr>td", :text => "Customer Info2".to_s, :count => 2
    assert_select "tr>td", :text => "Customer Info3".to_s, :count => 2
    assert_select "tr>td", :text => "Customer Info4".to_s, :count => 2
    assert_select "tr>td", :text => "Customer Info5".to_s, :count => 2
    assert_select "tr>td", :text => "Building Type".to_s, :count => 2
    assert_select "tr>td", :text => "Building Type Description".to_s, :count => 2
    assert_select "tr>td", :text => "Deliminated Address".to_s, :count => 2
    assert_select "tr>td", :text => "Coding Quality".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Location Info1".to_s, :count => 2
    assert_select "tr>td", :text => "Location Info2".to_s, :count => 2
    assert_select "tr>td", :text => "Location Info3".to_s, :count => 2
    assert_select "tr>td", :text => "Location Info4".to_s, :count => 2
    assert_select "tr>td", :text => "Location Info5".to_s, :count => 2
    assert_select "tr>td", :text => "Monthly Charge".to_s, :count => 2
    assert_select "tr>td", :text => "Job Points".to_s, :count => 2
    assert_select "tr>td", :text => "Total Bablace Due".to_s, :count => 2
    assert_select "tr>td", :text => "Ordering Operator".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Phone1".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Phone2".to_s, :count => 2
    assert_select "tr>td", :text => "Drop Location".to_s, :count => 2
    assert_select "tr>td", :text => "Tag".to_s, :count => 2
    assert_select "tr>td", :text => "House Status".to_s, :count => 2
    assert_select "tr>td", :text => "Quota Group".to_s, :count => 2
    assert_select "tr>td", :text => "Quota Area".to_s, :count => 2
    assert_select "tr>td", :text => "Detail Text1".to_s, :count => 2
    assert_select "tr>td", :text => "Detail Text2".to_s, :count => 2
    assert_select "tr>td", :text => "Detail Text3".to_s, :count => 2
    assert_select "tr>td", :text => "Detail Text4".to_s, :count => 2
    assert_select "tr>td", :text => "Detail Text5".to_s, :count => 2
    assert_select "tr>td", :text => "Sms Job Number".to_s, :count => 2
    assert_select "tr>td", :text => "Assigning Operator".to_s, :count => 2
    assert_select "tr>td", :text => "Repeat".to_s, :count => 2
    assert_select "tr>td", :text => "Repeat Count".to_s, :count => 2
    assert_select "tr>td", :text => "Node".to_s, :count => 2
    assert_select "tr>td", :text => "Tech Business Unit".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

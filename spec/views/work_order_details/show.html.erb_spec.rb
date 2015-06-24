require 'rails_helper'

RSpec.describe "work_order_details/show", type: :view do
  before(:each) do
    @work_order_detail = assign(:work_order_detail, WorkOrderDetail.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Smsid/)
    expect(rendered).to match(/Buid/)
    expect(rendered).to match(/Sms/)
    expect(rendered).to match(/Contact Phone Number/)
    expect(rendered).to match(/Business Unit/)
    expect(rendered).to match(/Versionid/)
    expect(rendered).to match(/Tzi/)
    expect(rendered).to match(/Fsruserid/)
    expect(rendered).to match(/Fsrbuid/)
    expect(rendered).to match(/Previous Fsr Buid/)
    expect(rendered).to match(/Dispatcher/)
    expect(rendered).to match(/Key1/)
    expect(rendered).to match(/Problem Code/)
    expect(rendered).to match(/Key2/)
    expect(rendered).to match(/Jobtype/)
    expect(rendered).to match(/Jobclass/)
    expect(rendered).to match(/Tech Completed/)
    expect(rendered).to match(/Compliance/)
    expect(rendered).to match(/Customer Id2/)
    expect(rendered).to match(/Pricing Category/)
    expect(rendered).to match(/Pricing Category Description/)
    expect(rendered).to match(/Campaign Code/)
    expect(rendered).to match(/Campaign Code Description/)
    expect(rendered).to match(/Customer Status/)
    expect(rendered).to match(/Customer Status Description/)
    expect(rendered).to match(/Customer Info1/)
    expect(rendered).to match(/Customer Info2/)
    expect(rendered).to match(/Customer Info3/)
    expect(rendered).to match(/Customer Info4/)
    expect(rendered).to match(/Customer Info5/)
    expect(rendered).to match(/Building Type/)
    expect(rendered).to match(/Building Type Description/)
    expect(rendered).to match(/Deliminated Address/)
    expect(rendered).to match(/Coding Quality/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Location Info1/)
    expect(rendered).to match(/Location Info2/)
    expect(rendered).to match(/Location Info3/)
    expect(rendered).to match(/Location Info4/)
    expect(rendered).to match(/Location Info5/)
    expect(rendered).to match(/Monthly Charge/)
    expect(rendered).to match(/Job Points/)
    expect(rendered).to match(/Total Bablace Due/)
    expect(rendered).to match(/Ordering Operator/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Contact Phone1/)
    expect(rendered).to match(/Contact Phone2/)
    expect(rendered).to match(/Drop Location/)
    expect(rendered).to match(/Tag/)
    expect(rendered).to match(/House Status/)
    expect(rendered).to match(/Quota Group/)
    expect(rendered).to match(/Quota Area/)
    expect(rendered).to match(/Detail Text1/)
    expect(rendered).to match(/Detail Text2/)
    expect(rendered).to match(/Detail Text3/)
    expect(rendered).to match(/Detail Text4/)
    expect(rendered).to match(/Detail Text5/)
    expect(rendered).to match(/Sms Job Number/)
    expect(rendered).to match(/Assigning Operator/)
    expect(rendered).to match(/Repeat/)
    expect(rendered).to match(/Repeat Count/)
    expect(rendered).to match(/Node/)
    expect(rendered).to match(/Tech Business Unit/)
    expect(rendered).to match(//)
  end
end

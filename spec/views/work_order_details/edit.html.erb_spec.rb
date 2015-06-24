require 'rails_helper'

RSpec.describe "work_order_details/edit", type: :view do
  before(:each) do
    @work_order_detail = assign(:work_order_detail, WorkOrderDetail.create!(
      :smsid => "MyString",
      :buid => "MyString",
      :sms => "MyString",
      :contact_phone_number => "MyString",
      :business_unit => "MyString",
      :versionid => "MyString",
      :tzi => "MyString",
      :fsruserid => "MyString",
      :fsrbuid => "MyString",
      :previous_fsr_buid => "MyString",
      :dispatcher_id => "MyString",
      :key1 => "MyString",
      :problem_code => "MyString",
      :key2 => "MyString",
      :jobtype => "MyString",
      :jobclass => "MyString",
      :tech_completed => "MyString",
      :compliance => "MyString",
      :customer_id2 => "MyString",
      :pricing_category => "MyString",
      :pricing_category_description => "MyString",
      :campaign_code => "MyString",
      :campaign_code_description => "MyString",
      :customer_status => "MyString",
      :customer_status_description => "MyString",
      :customer_info1 => "MyString",
      :customer_info2 => "MyString",
      :customer_info3 => "MyString",
      :customer_info4 => "MyString",
      :customer_info5 => "MyString",
      :building_type => "MyString",
      :building_type_description => "MyString",
      :deliminated_address => "MyString",
      :coding_quality => "MyString",
      :location_id => "MyString",
      :location_info1 => "MyString",
      :location_info2 => "MyString",
      :location_info3 => "MyString",
      :location_info4 => "MyString",
      :location_info5 => "MyString",
      :monthly_charge => "MyString",
      :job_points => "MyString",
      :total_bablace_due => "MyString",
      :ordering_operator_id => "MyString",
      :contact_name => "MyString",
      :contact_phone1 => "MyString",
      :contact_phone2 => "MyString",
      :drop_location => "MyString",
      :tag_id => "MyString",
      :house_status => "MyString",
      :quota_group => "MyString",
      :quota_area => "MyString",
      :detail_text1 => "MyString",
      :detail_text2 => "MyString",
      :detail_text3 => "MyString",
      :detail_text4 => "MyString",
      :detail_text5 => "MyString",
      :sms_job_number => "MyString",
      :assigning_operator_id => "MyString",
      :repeat => "MyString",
      :repeat_count => "MyString",
      :node_id => "MyString",
      :tech_business_unit => "MyString",
      :work_order => nil
    ))
  end

  it "renders the edit work_order_detail form" do
    render

    assert_select "form[action=?][method=?]", work_order_detail_path(@work_order_detail), "post" do

      assert_select "input#work_order_detail_smsid[name=?]", "work_order_detail[smsid]"

      assert_select "input#work_order_detail_buid[name=?]", "work_order_detail[buid]"

      assert_select "input#work_order_detail_sms[name=?]", "work_order_detail[sms]"

      assert_select "input#work_order_detail_contact_phone_number[name=?]", "work_order_detail[contact_phone_number]"

      assert_select "input#work_order_detail_business_unit[name=?]", "work_order_detail[business_unit]"

      assert_select "input#work_order_detail_versionid[name=?]", "work_order_detail[versionid]"

      assert_select "input#work_order_detail_tzi[name=?]", "work_order_detail[tzi]"

      assert_select "input#work_order_detail_fsruserid[name=?]", "work_order_detail[fsruserid]"

      assert_select "input#work_order_detail_fsrbuid[name=?]", "work_order_detail[fsrbuid]"

      assert_select "input#work_order_detail_previous_fsr_buid[name=?]", "work_order_detail[previous_fsr_buid]"

      assert_select "input#work_order_detail_dispatcher_id[name=?]", "work_order_detail[dispatcher_id]"

      assert_select "input#work_order_detail_key1[name=?]", "work_order_detail[key1]"

      assert_select "input#work_order_detail_problem_code[name=?]", "work_order_detail[problem_code]"

      assert_select "input#work_order_detail_key2[name=?]", "work_order_detail[key2]"

      assert_select "input#work_order_detail_jobtype[name=?]", "work_order_detail[jobtype]"

      assert_select "input#work_order_detail_jobclass[name=?]", "work_order_detail[jobclass]"

      assert_select "input#work_order_detail_tech_completed[name=?]", "work_order_detail[tech_completed]"

      assert_select "input#work_order_detail_compliance[name=?]", "work_order_detail[compliance]"

      assert_select "input#work_order_detail_customer_id2[name=?]", "work_order_detail[customer_id2]"

      assert_select "input#work_order_detail_pricing_category[name=?]", "work_order_detail[pricing_category]"

      assert_select "input#work_order_detail_pricing_category_description[name=?]", "work_order_detail[pricing_category_description]"

      assert_select "input#work_order_detail_campaign_code[name=?]", "work_order_detail[campaign_code]"

      assert_select "input#work_order_detail_campaign_code_description[name=?]", "work_order_detail[campaign_code_description]"

      assert_select "input#work_order_detail_customer_status[name=?]", "work_order_detail[customer_status]"

      assert_select "input#work_order_detail_customer_status_description[name=?]", "work_order_detail[customer_status_description]"

      assert_select "input#work_order_detail_customer_info1[name=?]", "work_order_detail[customer_info1]"

      assert_select "input#work_order_detail_customer_info2[name=?]", "work_order_detail[customer_info2]"

      assert_select "input#work_order_detail_customer_info3[name=?]", "work_order_detail[customer_info3]"

      assert_select "input#work_order_detail_customer_info4[name=?]", "work_order_detail[customer_info4]"

      assert_select "input#work_order_detail_customer_info5[name=?]", "work_order_detail[customer_info5]"

      assert_select "input#work_order_detail_building_type[name=?]", "work_order_detail[building_type]"

      assert_select "input#work_order_detail_building_type_description[name=?]", "work_order_detail[building_type_description]"

      assert_select "input#work_order_detail_deliminated_address[name=?]", "work_order_detail[deliminated_address]"

      assert_select "input#work_order_detail_coding_quality[name=?]", "work_order_detail[coding_quality]"

      assert_select "input#work_order_detail_location_id[name=?]", "work_order_detail[location_id]"

      assert_select "input#work_order_detail_location_info1[name=?]", "work_order_detail[location_info1]"

      assert_select "input#work_order_detail_location_info2[name=?]", "work_order_detail[location_info2]"

      assert_select "input#work_order_detail_location_info3[name=?]", "work_order_detail[location_info3]"

      assert_select "input#work_order_detail_location_info4[name=?]", "work_order_detail[location_info4]"

      assert_select "input#work_order_detail_location_info5[name=?]", "work_order_detail[location_info5]"

      assert_select "input#work_order_detail_monthly_charge[name=?]", "work_order_detail[monthly_charge]"

      assert_select "input#work_order_detail_job_points[name=?]", "work_order_detail[job_points]"

      assert_select "input#work_order_detail_total_bablace_due[name=?]", "work_order_detail[total_bablace_due]"

      assert_select "input#work_order_detail_ordering_operator_id[name=?]", "work_order_detail[ordering_operator_id]"

      assert_select "input#work_order_detail_contact_name[name=?]", "work_order_detail[contact_name]"

      assert_select "input#work_order_detail_contact_phone1[name=?]", "work_order_detail[contact_phone1]"

      assert_select "input#work_order_detail_contact_phone2[name=?]", "work_order_detail[contact_phone2]"

      assert_select "input#work_order_detail_drop_location[name=?]", "work_order_detail[drop_location]"

      assert_select "input#work_order_detail_tag_id[name=?]", "work_order_detail[tag_id]"

      assert_select "input#work_order_detail_house_status[name=?]", "work_order_detail[house_status]"

      assert_select "input#work_order_detail_quota_group[name=?]", "work_order_detail[quota_group]"

      assert_select "input#work_order_detail_quota_area[name=?]", "work_order_detail[quota_area]"

      assert_select "input#work_order_detail_detail_text1[name=?]", "work_order_detail[detail_text1]"

      assert_select "input#work_order_detail_detail_text2[name=?]", "work_order_detail[detail_text2]"

      assert_select "input#work_order_detail_detail_text3[name=?]", "work_order_detail[detail_text3]"

      assert_select "input#work_order_detail_detail_text4[name=?]", "work_order_detail[detail_text4]"

      assert_select "input#work_order_detail_detail_text5[name=?]", "work_order_detail[detail_text5]"

      assert_select "input#work_order_detail_sms_job_number[name=?]", "work_order_detail[sms_job_number]"

      assert_select "input#work_order_detail_assigning_operator_id[name=?]", "work_order_detail[assigning_operator_id]"

      assert_select "input#work_order_detail_repeat[name=?]", "work_order_detail[repeat]"

      assert_select "input#work_order_detail_repeat_count[name=?]", "work_order_detail[repeat_count]"

      assert_select "input#work_order_detail_node_id[name=?]", "work_order_detail[node_id]"

      assert_select "input#work_order_detail_tech_business_unit[name=?]", "work_order_detail[tech_business_unit]"

      assert_select "input#work_order_detail_work_order_id[name=?]", "work_order_detail[work_order_id]"
    end
  end
end

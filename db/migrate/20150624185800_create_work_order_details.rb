class CreateWorkOrderDetails < ActiveRecord::Migration
  def change
    create_table :work_order_details do |t|
      t.string :smsid
      t.string :buid
      t.string :sms
      t.string :contact_phone_number
      t.string :business_unit
      t.string :versionid
      t.string :tzi
      t.string :fsruserid
      t.string :fsrbuid
      t.string :previous_fsr_buid
      t.string :dispatcher_id
      t.string :key1
      t.string :problem_code
      t.string :key2
      t.datetime :order_date_time
      t.datetime :due_date_time
      t.string :jobtype
      t.string :jobclass
      t.string :tech_completed
      t.datetime :last_changed
      t.string :compliance
      t.string :customer_id2
      t.string :pricing_category
      t.string :pricing_category_description
      t.string :campaign_code
      t.string :campaign_code_description
      t.string :customer_status
      t.string :customer_status_description
      t.string :customer_info1
      t.string :customer_info2
      t.string :customer_info3
      t.string :customer_info4
      t.string :customer_info5
      t.string :building_type
      t.string :building_type_description
      t.string :deliminated_address
      t.string :coding_quality
      t.string :location_id
      t.string :location_info1
      t.string :location_info2
      t.string :location_info3
      t.string :location_info4
      t.string :location_info5
      t.string :monthly_charge
      t.string :job_points
      t.string :total_bablace_due
      t.string :ordering_operator_id
      t.string :contact_name
      t.string :contact_phone1
      t.string :contact_phone2
      t.string :drop_location
      t.string :tag_id
      t.string :house_status
      t.string :quota_group
      t.string :quota_area
      t.string :detail_text1
      t.string :detail_text2
      t.string :detail_text3
      t.string :detail_text4
      t.string :detail_text5
      t.string :sms_job_number
      t.string :assigning_operator_id
      t.string :repeat
      t.string :repeat_count
      t.string :node_id
      t.string :tech_business_unit
      t.references :work_order, index: true

      t.timestamps
    end
  end
end

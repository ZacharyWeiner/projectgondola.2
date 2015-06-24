class CreateTechnicians < ActiveRecord::Migration
  def change
    create_table :technicians do |t|
      t.string :mso_tech_id
      t.datetime :last_background_check
      t.string :gchat_id
      t.boolean :is_active
      t.string :home_phone
      t.string :cell_phone
      t.datetime :last_drug_test
      t.string :internal_tech_id
      t.references :company_info, index: true

      t.timestamps
    end
  end
end

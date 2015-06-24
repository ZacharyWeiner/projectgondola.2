class CreateCompanyInfos < ActiveRecord::Migration
  def change
    create_table :company_infos do |t|
      t.string :name
      t.date :contract_date
      t.date :liability_insurance_date
      t.string :liability_insurance_company
      t.string :liability_insurance_policy_number
      t.string :workers_comp_company
      t.string :workers_comp_policy_number
      t.date :business_registrataion_expiration
      t.date :annual_filing_date

      t.timestamps
    end
  end
end

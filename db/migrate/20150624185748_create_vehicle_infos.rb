class CreateVehicleInfos < ActiveRecord::Migration
  def change
    create_table :vehicle_infos do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.string :registration_state
      t.string :color
      t.string :plate
      t.string :registration_id
      t.date :registration_expiration
      t.string :insurance_company
      t.date :insurance_company
      t.references :company_info, index: true

      t.timestamps
    end
  end
end

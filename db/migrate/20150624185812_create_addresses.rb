class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_number
      t.string :street_name
      t.string :unit
      t.string :address_type
      t.string :city
      t.string :state
      t.string :zip
      t.string :full_street_address
      t.string :map_grid
      t.string :latitude
      t.string :longitude
      t.references :company_info, index: true
      t.references :emergency_contact, index: true
      t.references :work_order, index: true

      t.timestamps
    end
  end
end

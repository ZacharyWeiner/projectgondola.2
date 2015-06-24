class CreateEmergencyContacts < ActiveRecord::Migration
  def change
    create_table :emergency_contacts do |t|
      t.string :name
      t.string :relationship
      t.string :phone_number

      t.timestamps
    end
  end
end

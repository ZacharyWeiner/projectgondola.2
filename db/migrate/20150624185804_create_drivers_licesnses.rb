class CreateDriversLicesnses < ActiveRecord::Migration
  def change
    create_table :drivers_licesnses do |t|
      t.references :technician, index: true
      t.string :license_id
      t.string :height
      t.string :weight
      t.string :eye_color
      t.date :birthday
      t.string :hair_color
      t.string :state
      t.date :expiration

      t.timestamps
    end
  end
end

class CreateTimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|
      t.string :code
      t.string :description
      t.references :work_order, index: true

      t.timestamps
    end
  end
end

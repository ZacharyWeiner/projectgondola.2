class CreateChangeLogs < ActiveRecord::Migration
  def change
    create_table :change_logs do |t|
      t.string :table_name
      t.string :field_changed
      t.integer :record_id_changed
      t.string :datatype
      t.string :old_value
      t.string :new_value
      t.references :user, index: true

      t.timestamps
    end
  end
end

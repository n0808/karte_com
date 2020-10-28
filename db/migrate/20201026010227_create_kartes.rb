class CreateKartes < ActiveRecord::Migration[6.0]
  def change
    create_table :kartes do |t|
      t.string :name, null:false
      t.text :before_treatment
      t.text :after_treatment
      t.text :part
      t.string :doctor_name, null:false
      t.string :facility_name
      t.integer :sex_id, null:false
      t.integer :clinic_id, null:false
      t.integer :instructions_id
      t.integer :medical_examination_id, null:false
      t.integer :day_id, null:false
      t.timestamps
    end
  end
end

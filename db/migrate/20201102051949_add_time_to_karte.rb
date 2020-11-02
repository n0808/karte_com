class AddTimeToKarte < ActiveRecord::Migration[6.0]
  def change
    add_column :kartes, :doctor_start_date, :datetime
    add_column :kartes, :doctor_end_date, :datetime
    add_column :kartes, :dh_start_date, :datetime
    add_column :kartes, :dh_end_date, :datetime
  end
end

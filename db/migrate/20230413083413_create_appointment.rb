class CreateAppointment < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.datetime :pickup_date
      t.datetime :return_date
      t.timestamps
    end
  end
end

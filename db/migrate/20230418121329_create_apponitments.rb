class CreateApponitments < ActiveRecord::Migration[7.0]
  def change
    create_table :apponitments do |t|
      t.datetime :date

      t.references :user, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.timestamps
    end
  end
end

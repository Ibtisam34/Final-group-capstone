class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialization
      t.string :email
      t.string :phone
      t.string :image
      t.string :availability 
      
      t.timestamps
    end
  end
end

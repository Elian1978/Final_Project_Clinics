class CreateClinics < ActiveRecord::Migration[6.1]
  def change
    create_table :clinics do |t|
      t.string :name, null: false
      t.string :phone
      t.string :email
      t.string :adress
      t.string :information

      t.timestamps
    end
  end
end

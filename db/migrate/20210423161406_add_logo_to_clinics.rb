class AddLogoToClinics < ActiveRecord::Migration[6.1]
  def change
    add_column :clinics, :logo, :string
  end
end

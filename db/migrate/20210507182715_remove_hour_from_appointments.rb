class RemoveHourFromAppointments < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointments, :hour, :time
  end
end

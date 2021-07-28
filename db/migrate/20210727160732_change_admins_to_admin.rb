class ChangeAdminsToAdmin < ActiveRecord::Migration[5.2]
  def change
    rename_table :admins, :admin
  end
end

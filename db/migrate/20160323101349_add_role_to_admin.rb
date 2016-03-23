class AddRoleToAdmin < ActiveRecord::Migration
  def change
    add_reference :admins, :role, index: true, foreign_key: true
  end
end

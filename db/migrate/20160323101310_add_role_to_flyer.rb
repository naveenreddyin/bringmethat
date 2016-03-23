class AddRoleToFlyer < ActiveRecord::Migration
  def change
    add_reference :flyers, :role, index: true, foreign_key: true
  end
end

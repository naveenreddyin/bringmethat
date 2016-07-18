class RemoveUpdatedAtFromRoles < ActiveRecord::Migration
  def change
    remove_column :roles, :updated_at, :datetime
  end
end

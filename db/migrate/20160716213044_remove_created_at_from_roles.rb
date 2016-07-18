class RemoveCreatedAtFromRoles < ActiveRecord::Migration
  def change
    remove_column :roles, :created_at, :datetime
  end
end

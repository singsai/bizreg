class RenameTypeToUserType < ActiveRecord::Migration
  def up
    rename_column :users, :type, :user_type
  end

  def down
    rename_column :users, :type, :user_type
  end
end

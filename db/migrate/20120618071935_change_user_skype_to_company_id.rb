class ChangeUserSkypeToCompanyId < ActiveRecord::Migration
  def up
    rename_column :users, :skype, :company_id
  end

  def down
    rename_column :users, :skype, :company_id
  end
end

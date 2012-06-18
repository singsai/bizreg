class ChangeCompanyLogoToLogoFile < ActiveRecord::Migration
  def up
    rename_column :companies, :logo, :logo_file
  end

  def down
    rename_column :companies, :logo, :logo_file
  end
end

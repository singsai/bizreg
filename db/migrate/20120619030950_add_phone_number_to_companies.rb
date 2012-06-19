class AddPhoneNumberToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :phone_number, :string
  end
end

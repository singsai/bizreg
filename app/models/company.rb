class Company < ActiveRecord::Base
  has_many :users
  
  attr_accessible :name, :logo
end
# == Schema Information
#
# Table name: companies
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  logo       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


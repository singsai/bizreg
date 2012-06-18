class Company < ActiveRecord::Base
  has_many :users
  
  attr_accessible :name, :logo
  before_save :create_permalink
  
  def to_param
    permalink
  end
  
  private
       def create_permalink
            self.permalink = name.downcase
       end  
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


class Company < ActiveRecord::Base
  has_many :users
  
  attr_accessible :name, :phone_number, :logo_file
  before_save :create_permalink

  validates :name, :presence => true, :uniqueness => true
  validates :phone_number, :presence => true  
  validates :logo_file, :presence => true, :uniqueness => true

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
#  logo_file  :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  permalink  :string(255)
#


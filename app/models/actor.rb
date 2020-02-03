class Actor < ActiveRecord::Base
  has_many :shows 
  has_many :characters, through: :shows 

  



  def full_name 

  end 

  def list_roles 

  end 

  
end
class Project < ActiveRecord::Base
  attr_accessible :description, :name
  
  has_many :screencasts
  
end

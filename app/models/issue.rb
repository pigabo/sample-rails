class Issue < ActiveRecord::Base
  attr_accessible :description, :no_followers, :title  
  validates_presence_of :title
  validates_uniqueness_of :title
  validates_length_of :title, minimum: 2, maximum: 120
  validates_numericality_of :no_followers, allow_blank: true
  
  validates_with Yesnovalidator # Custom Validator  
end

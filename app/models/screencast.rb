class Screencast < ActiveRecord::Base
  attr_accessible :duration, :link, :published_at, :source, :summary, :title, :videourl
  
  validates_presence_of :title, :summary
  #validates_uniqueness_of :videourl
end

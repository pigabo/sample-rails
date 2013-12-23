class Screencast < ActiveRecord::Base
  attr_accessible :duration, :link, :published_at, :source, :summary, :title, :videourl, :tags
  
  validates_presence_of :title, :summary
  #validates_uniqueness_of :videourl
  
  belongs_to :project
  
  after_save :add_to_timeline
  
  before_save :strip_spaces_from_tags
  
  private 
  
  def add_to_timeline
    Timeline.create!({ content: "An screencast was created!", timelineable_id: id, timelineable_type: self.class.to_s })
  end
  
  def strip_spaces_from_tags
    self.tags.gsub! ", ", ","    
  end
end

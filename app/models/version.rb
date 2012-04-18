class Version < ActiveRecord::Base
  attr_accessible :content
  
  belongs_to :document
  validates_presence_of :document
  #belongs_to :document_current_version_for, , :class_name => "Document"
end

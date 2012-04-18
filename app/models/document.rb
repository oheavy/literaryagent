class Document < ActiveRecord::Base
  attr_accessible :name, :user_tokens, :author_id
  validates_presence_of :name
  
  has_many :versions, :dependent => :destroy
  has_one :current_version, :class_name => "Version", :foreign_key => "current_version_id"
  
  has_and_belongs_to_many :users
  belongs_to :author, :class_name => "User"
  
  attr_reader :user_tokens
  
  def user_tokens=(ids)
    self.user_ids = ids.split(",")
  end
end

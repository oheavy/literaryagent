class Document < ActiveRecord::Base
  attr_accessible :name, :user_tokens, :author_id, :current_document_id
  validates_presence_of :name
  
  has_many :versions, :dependent => :destroy
  has_one :current_version, :class_name => "Version", :foreign_key => "current_version_id"
  
  has_and_belongs_to_many :users
  belongs_to :author, :class_name => "User"
  has_many :current_users, :class_name => "User", :foreign_key => "current_document_id"
  
  attr_reader :user_tokens
  
  # named_scope :all_for_user, lambda{ |user|
      # {
        # :joins  => {:users, :documents_users},
        # :conditions => {:documents_users => {:user_id => user.id},
        # :select => "DISTINCT `documents`.*"
      # }
    # }
    # }
  
  def user_tokens=(ids)
    self.user_ids = ids.split(",")
  end
end

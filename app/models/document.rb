class Document < ActiveRecord::Base
  attr_accessible :name, :user_tokens
  validates_presence_of :name
  
  has_and_belongs_to_many :users
  attr_reader :user_tokens
  
  def user_tokens=(ids)
    self.user_ids = ids.split(",")
  end
end

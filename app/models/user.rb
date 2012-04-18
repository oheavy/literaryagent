class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me#, :confirmed_at


  validates_presence_of :name, :email
  validates_uniqueness_of :email, :case_sensitive => false

  has_and_belongs_to_many :documents
  has_many :created_documents, :class_name => "Document", :foreign_key => "author_id"
  belongs_to :current_document, :class_name => "Document"
end

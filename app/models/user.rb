class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me#, :confirmed_at


  validates_presence_of :name, :email, :password, :password_confirmation
  validates_uniqueness_of :email, :case_sensitive => false

  has_and_belongs_to_many :documents

  # attr_accessible :documents_tokens
  # attr_reader :documents_tokens
  #
  # def documents_tokens=(ids)
  # self.document_ids = ids.split(",")
  # end
end

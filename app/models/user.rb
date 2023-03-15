class User < ApplicationRecord
  has_many :language_collections
  has_many :languages, through: :language_collections
  has_many :snippet_collections
  has_many :code_snippets, through: :snippet_collections
  has_many :posts
  has_many :comments
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

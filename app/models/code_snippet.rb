class CodeSnippet < ApplicationRecord
    has_many :languages
    has_many :snippet_collections
    has_many :users, through: :snippet_collections
end

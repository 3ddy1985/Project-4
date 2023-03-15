class Language < ApplicationRecord
    has_many :language_collections
    has_many :users, through: :language_collections
    has_many :code_snippets
end

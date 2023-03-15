class SnippetCollection < ApplicationRecord
    belongs_to :user
    belongs_to :code_snippets
end

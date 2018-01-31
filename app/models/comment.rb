class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article
  validates :body, length: {
    minimum: 5,
    too_short: "Please write at least %{count} characters"
  }
end

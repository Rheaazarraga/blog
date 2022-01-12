class Comment < ActiveRecord::Base
  belongs_to :article   # sets up Active Record association
  # each comment belongs to one article
  # one article can have many comments
end

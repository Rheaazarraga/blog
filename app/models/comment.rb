class Comment < ActiveRecord::Base
  belongs_to :article   # sets up Active Record association
end

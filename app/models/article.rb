class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end

# when deleting an article, its associated comments will also need to be deleted otherwise they would clutter the db - use the dependent option of association
class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, index: true, foreign_key: true
# t.references creates an integer column called article_id, and index for it, and a FK constraint that points to the articles table
      t.timestamps null: false
    end
  end
end

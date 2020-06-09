class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true
      belongs_to :user
      belongs_to :book
      user_id:integer
      book_id:integer
      t.timestamps
    end
  end
end

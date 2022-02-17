class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.text :comment
      t.references :movies, null: false, foreign_key: true

      t.timestamps
    end
  end
end
# Make a migration to remove column and re add it

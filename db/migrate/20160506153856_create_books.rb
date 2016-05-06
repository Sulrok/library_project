class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :bookID
      t.string :title
      t.string :isbn
      t.string :description
      t.string :author
      t.integer :isAvailable

      t.timestamps null: false
    end
  end
end

class AddBooklistToMembers < ActiveRecord::Migration
  def change
    add_column :members, :booklist, :string
  end
end

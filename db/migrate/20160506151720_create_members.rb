class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :userName
      t.string :password_digest
      t.string :name
      t.string :surrName
      t.string :email
      t.string :addr1
      t.string :addr2
      t.string :tel
      t.boolean :isActive
      t.boolean :isAdmin


      t.timestamps null: false
    end
  end
end

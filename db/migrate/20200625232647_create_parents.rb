class CreateParents < ActiveRecord::Migration[6.0]
  def change
    create_table :parents do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :kid_names
      t.timestamps 
  end
end

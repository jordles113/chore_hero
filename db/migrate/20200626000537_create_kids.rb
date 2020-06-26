class CreateKids < ActiveRecord::Migration[6.0]
  def change 
    create_table :kids do |t|
      t.belongs_to :parent
      t.string :name 
      t.string :username
      t.string :password 
      t.string :birthday
    end 
  end
end

class CreateChores < ActiveRecord::Migration[6.0]
  def change
    create_table :chores do |t|
      t.belongs_to :parent
      t.string :name 
      t.string :description 
    end
  end 
end

class CreateBadges < ActiveRecord::Migration[6.0]
  def change
    create_table :badges do |t| 
      t.string :name 
      t.string :description 
      t.belongs_to :kid 
      t.belongs_to :achievement
    end 
  end 
end

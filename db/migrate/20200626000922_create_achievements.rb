class CreateAchievements < ActiveRecord::Migration[6.0]
  def change
  end 
end
class CreateBadges < ActiveRecord::Migration[6.0]

  def change
    create_table :achievements do |t|
      t.text :identity, unique: true, index: true  #this is so you dont have to  memorize index values
      t.text :name
      t.timestamps null: false
    end
  end
end
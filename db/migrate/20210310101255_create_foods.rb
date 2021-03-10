class CreateFoods < ActiveRecord::Migration[5.2]
  def change
   create_table :foods do |f|
       f.string :title 
       f.text :description
       f.decimal :price
       f.decimal :size
       f.boolean :burger
       f.boolean :fries
       f.boolean :nuggets
       f.boolean :drink
       f.boolean :sauce
       f.string :path_to_image
       
       f.timestamps
    end

  end
end

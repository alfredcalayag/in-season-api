class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
      t.string :fruit_name
      t.text :fruit_description
      t.string :category
      t.string :season
    end
  end
end

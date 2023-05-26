class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :phase
      t.text :description
      t.string :video
      t.string :github
      t.string :image1
      t.string :image2
      t.string :image3

      t.timestamps
    end
  end
end

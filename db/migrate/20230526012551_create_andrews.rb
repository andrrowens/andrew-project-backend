class CreateAndrews < ActiveRecord::Migration[6.1]
  def change
    create_table :andrews do |t|
      t.string :name
      t.text :background
      t.text :description

      t.timestamps
    end
  end
end

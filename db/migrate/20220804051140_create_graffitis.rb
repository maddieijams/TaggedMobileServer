class CreateGraffitis < ActiveRecord::Migration[7.0]
  def change
    create_table :graffitis do |t|
      t.string :title
      t.text :description
      t.float :lat
      t.float :lng
      t.string :imageId

      t.timestamps
    end
  end
end

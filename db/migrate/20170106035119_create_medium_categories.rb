class CreateMediumCategories < ActiveRecord::Migration
  def change
    create_table :medium_categories do |t|
      t.references :medium, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.string :url

      t.timestamps null: false
    end
  end
end

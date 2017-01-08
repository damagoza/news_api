class CreateNewsExtracts < ActiveRecord::Migration
  def change
    create_table :news_extracts do |t|
      t.references :MediumCategory, index: true, foreign_key: true
      t.string :title
      t.string :content

      t.timestamps null: false
    end
  end
end

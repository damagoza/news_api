class AddFielImageToNewsExtract < ActiveRecord::Migration
  def change
	add_column :news_extracts, :image, :string, :default => ''
  end
end

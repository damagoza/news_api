class AddUrlNewsExtract < ActiveRecord::Migration
  def change
  	add_column :news_extracts, :url, :string, :default => ''
  end
end

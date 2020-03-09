class DropNewsSection < ActiveRecord::Migration[5.2]
  def change
    drop_table :news_sections
  end
end

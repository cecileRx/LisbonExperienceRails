class AddColorToLeaks < ActiveRecord::Migration[5.2]
  def change
    add_column :leaks, :color, :string
  end
end

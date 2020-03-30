class AddDurationToTours < ActiveRecord::Migration[5.2]
  def change
    add_column :tours, :duration, :string
  end
end

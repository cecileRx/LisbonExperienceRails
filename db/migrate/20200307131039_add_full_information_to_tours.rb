class AddFullInformationToTours < ActiveRecord::Migration[5.2]
  def change
    add_column :tours, :full_information, :text
  end
end

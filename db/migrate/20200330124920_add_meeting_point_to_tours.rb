class AddMeetingPointToTours < ActiveRecord::Migration[5.2]
  def change
    add_column :tours, :meeting_point, :text
  end
end

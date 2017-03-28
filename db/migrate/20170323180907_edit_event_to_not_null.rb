class EditEventToNotNull < ActiveRecord::Migration[5.0]
  def change
	change_column :events, :name, :string, :null => false
  end
end

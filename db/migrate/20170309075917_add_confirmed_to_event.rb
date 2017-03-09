class AddConfirmedToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :confirmed, :boolean
  end
end

class RemoveEditEverything < ActiveRecord::Migration[5.0]
  def change
	remove_column :users, :admin, :boolean
	remove_column :users, :type, :string
	
	add_column :users, :admin, :boolean
	add_column :users, :type, :string
  end
end

class RemoveImageFileNameFromSuggest < ActiveRecord::Migration[5.0]
  def change
    remove_column :suggests, :image_file_name, :string
    remove_column :suggests, :image_content_type, :string
    remove_column :suggests, :string, :string
    remove_column :suggests, :image_file_size, :string
    remove_column :suggests, :integer, :string
    remove_column :suggests, :image_updated_at, :string
    remove_column :suggests, :datetime, :string
  end
end

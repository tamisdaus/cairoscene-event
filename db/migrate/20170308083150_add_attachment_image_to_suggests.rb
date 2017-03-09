class AddAttachmentImageToSuggests < ActiveRecord::Migration
  def self.up
    change_table :suggests do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :suggests, :image
  end
end

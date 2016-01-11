class AddAttachmentImageToPicks < ActiveRecord::Migration
  def self.up
    change_table :picks do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :picks, :image
  end
end

class AddAttachmentAvatarToArtists < ActiveRecord::Migration[5.2]
  def self.up
    change_table :artists do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :artists, :avatar
  end
end

class RemoveAvatarAttachmentToUsers < ActiveRecord::Migration
  def change
  	remove_attachment :users, :avatar
  end
end

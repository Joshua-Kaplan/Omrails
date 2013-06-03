class RemoveImageRemoteurlFromPins < ActiveRecord::Migration
  def up
    remove_column :pins, :image_remoteurl
  end

  def down
    add_column :pins, :image_remoteurl, :string
  end
end

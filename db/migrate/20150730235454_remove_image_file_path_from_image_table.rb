class RemoveImageFilePathFromImageTable < ActiveRecord::Migration
  def change
  	remove_column :images, :image_file_path
  end
end

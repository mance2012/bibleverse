class Image < ActiveRecord::Base
	has_many :imagefiles
	belongs_to :user

	mount_uploader :image_file_path, ImageFilePathUploader
end

class Image < ActiveRecord::Base
	has_many :imagefiles

	has_many :categorizations

	has_many :categories, through: :categorizations

	belongs_to :user

	mount_uploader :image_file_path, ImageFilePathUploader
end

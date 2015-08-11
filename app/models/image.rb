class Image < ActiveRecord::Base
	has_many :imagefiles

	has_many :categorizations

	has_many :categories, through: :categorizations

	belongs_to :user

	def default_url(*args)
    	"default.png"
  	end

	mount_uploader :image_file_path, ImageFilePathUploader
end

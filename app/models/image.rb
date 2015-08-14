class Image < ActiveRecord::Base
	has_many :imagefiles

	has_many :categorizations

	has_many :categories, through: :categorizations

	belongs_to :user

	def default_url(*args)
    	"default.png"
  	end

  	# has_attached_file :images, 
   #  :path => ':rails_root/public/uploads/imagefile/image_file_path/:id/:basename.:extension'
  	# attr_protected :document_file_name, :document_content_type, :document_file_size

	mount_uploader :image_file_path, ImageFilePathUploader
end

class Imagefile < ActiveRecord::Base
  belongs_to :image
  mount_uploader :image_file_path, ImageFilePathUploader


  # has_attached_file :document,
  #   :path => ':rails_root/assets/documents/:id/:basename.:extension'
  # attr_protected :document_file_name, :document_content_type, :document_file_size

  def image_size
    @image_size ||= MiniMagick::Image.open(image_file_path.path)
  end

end

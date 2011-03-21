class ImperaviAsset < ActiveRecord::Base
  has_attached_file :file, :styles => { :medium => "300x300>", :thumb => "100x100>", :large => "600x600>" },
    :url=>"/assets/imperavi/:attachment/:id/:style/:filename"

  validates_attachment_presence :file

  def self.per_page
    4
  end


  def self.file_styles
     ImperaviAsset.attachment_definitions[:file][:styles].keys + [:original]
  end

  def file_style
    @file_style ||= :medium
  end

  def file_style=(file_style)
    @file_style = file_style
  end
end

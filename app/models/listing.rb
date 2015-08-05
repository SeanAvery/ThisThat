class Listing < ActiveRecord::Base
	# model requirement from paperclip
	has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "noimage.jpg"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end

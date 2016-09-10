class Photo < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy
	
	has_attached_file :image, styles: { :medium => "300x" }
    validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/gif', 'image/png']
end

                    
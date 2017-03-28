class Event < ApplicationRecord
	validate :any_present?

	def any_present?
		if image.blank? or name.blank? or address.blank?
			errors.add :base, "You must fill in all the field"
		end
	end
	
	has_attached_file :image, styles: { large: "300x300#", medium: "230x230#", thumb: "100x100#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

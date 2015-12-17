module ApplicationHelper

	def format_price(event)
		if event.free?
			content_tag(:strong, "Free")
		else
			number_to_currency(event.price, unit: "€ ") 
		end
	end

	def image_for(event)
		if event.image_file.blank?
			image_tag 'dummy.gif'
		else
			image_tag event.image_file
		end
	end
end

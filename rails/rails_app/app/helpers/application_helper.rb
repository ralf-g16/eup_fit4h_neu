module ApplicationHelper

	def format_price(event)
		if event.price.zero?
			"Free"
		else
			number_to_currency(event.price, unit: "€ ") 
		end
	end
end

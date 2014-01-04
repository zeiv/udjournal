module ApplicationHelper

	def menu_button(text, path)
		content_tag(:li, link_to(text, path))
	end

end

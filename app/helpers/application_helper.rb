module ApplicationHelper

	def menu_button(text, path, opts={})
		content_tag(:li, link_to(text, path, data: opts[:data]), class: opts[:class], id: opts[:id], data: opts[:data])
	end
end

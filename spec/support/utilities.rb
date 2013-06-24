def full_title(page_title)
	base_title = "Jodi's Badass Rails App"

	if page_title.empty?
		base_title
	else
		"#{page_title} | #{base_title}"
	end
end
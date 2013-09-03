  module Tabkeeper
  	module ViewHelpers
		  def nav_link(link_text, link_path, key)
		    active_state = @navigation.check_state(key)
		    content_tag(:li, :class => active_state) do
		      link_to link_text, link_path, id: "#{key.to_s}-nav-link", class: "nav-link"
		    end
		  end

		 	def add_nav_keys(keys)
		    @navigation.nil? ? @navigation = Tabkeeper::Navigation.new(keys) : @navigation.add(keys)
		  end

		  def add_nav_key(key)
		  	add_nav_keys(key)
		  end
		end
	end
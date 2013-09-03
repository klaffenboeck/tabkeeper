module Tabkeeper
	module ControllerAddons
		def autoset_nav_keys
	    add_nav_keys(controller_name)
	  end

	  def add_nav_keys(keys)
	    @navigation.nil? ? @navigation = Tabkeeper::Navigation.new(keys) : @navigation.add(keys)
	  end
	  #helper_method :add_nav_keys
	  alias_method :add_nav_key, :add_nav_keys

	  def self.included(base)
	  	base.before_filter :autoset_nav_keys
	  end
	end
end
require 'tabkeeper/view_helpers'
require 'tabkeeper/controller_addons'
module Tabkeeper
  class Railtie < Rails::Railtie
    initializer "tabkeeper.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end

    initializer "tabkeeper.controller_addons" do
    	ActionController::Base.send :include, ControllerAddons
  	end
  end
end
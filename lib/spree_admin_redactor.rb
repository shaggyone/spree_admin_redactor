require 'spree_core'
require 'spree_admin_redactor_hooks'

module SpreeAdminRedactor
  class Config
    cattr_accessor :controllers, :model_attributes
    @@controllers = /^admin\//
    @@model_attributes = []

    def self.model_attribute_by_name_selectors
      model_attributes.map do |ma|
        "textarea[name='#{ma[0]}[#{ma[1]}]']"
      end
    end
  end
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end

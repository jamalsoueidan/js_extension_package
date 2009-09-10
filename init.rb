# Include hook code here
require 'js_navigation_helpers'
require 'js_custom_helpers'
require 'js_extension_package'
require 'js_flash_extensions'

# block_helpers plugin
require 'block_helpers'

# validation_reflection plugin
require 'boiler_plate/validation_reflection'

ActiveRecord::Base.class_eval do
  include BoilerPlate::ActiveRecordExtensions::ValidationReflection
  BoilerPlate::ActiveRecordExtensions::ValidationReflection.load_config
  BoilerPlate::ActiveRecordExtensions::ValidationReflection.install(self)
end

require 'rails'
require 'orm_adapter'

module Schemata
  
  # require 'schemata/engine' if defined?(Rails) && Rails::VERSION::MAJOR == 3
  # require 'schemata/railtie'
  module Schema
    require 'schemata/schema'
    require 'schemata/schema/addressable'
    require 'schemata/schema/contactable'
    require 'schemata/schema/menuable'
    require 'schemata/schema/nameable'
  end
  
end

require 'schemata/orm/active_record'
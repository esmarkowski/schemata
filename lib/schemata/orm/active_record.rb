require 'orm_adapter/adapters/active_record'
module Schemata
  module Orm
    # This module contains some helpers and handle schema (migrations):
    #
    #   create_table :accounts do |t|
    #     t.menuable
    #     t.nameable
    #     t.addressable
    #     t.contactable
    #     t.timestamps
    #   end
    #
    #   
    module ActiveRecord
      module Schema
        include Schemata::Schema

        # Tell how to apply schema methods.
        def apply_schema(name, type, options={})
          column name, type.to_s.downcase.to_sym, options
        end
      end
    end
  end
end

ActiveRecord::ConnectionAdapters::Table.send :include, Schemata::Orm::ActiveRecord::Schema
ActiveRecord::ConnectionAdapters::TableDefinition.send :include, Schemata::Orm::ActiveRecord::Schema
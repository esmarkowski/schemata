module Schemata
  module Schema
    # @note Overwrite with specific modification to create your own schema.
     def apply_schema(name, type, options={})
       raise NotImplementedError
     end
  end
end
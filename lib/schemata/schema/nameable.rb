module Schemata
  module Schema
    def nameable
      apply_schema :first_name, String
      apply_schema :middle_name, String
      apply_schema :last_name, String
    end
  end
end
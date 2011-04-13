module Schemata
  module Schema
    def contactable
      nameable
      apply_schema :email_address, String
      apply_schema :phone_number, String
    end
  end
  
end
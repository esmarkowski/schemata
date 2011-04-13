module Schemata
  #Influenced by devise's schema module. Methods defined here will be available within migartion files to apply a schema concept.
  module Schema

      # Provides a common set of address fields such as, street_address_1, street_address_2, city, state, zip_code and country as String fields.
      def addressable
        apply_schema :street_address_1, String
        apply_schema :street_address_2, String
        apply_schema :city, String
        apply_schema :state, String
        apply_schema :zip_code, String
        apply_schema :country, String
      end
    
    end
end


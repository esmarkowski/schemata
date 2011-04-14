# schemata

Allows you to use and create sets of commonly used schemata. For example:

    create_table :accounts do |t|
        t.string "street_address_1"
        t.string "street_address_2"
        t.string "city"
        t.string "state"
        t.string "zip_code"
        t.string "country"
    end

becomes

    create_table :accounts do |t|
        t.addressable
    end

##Available schemata

* Addressable
* Contactable
* Nameable

##Creating your own collection

Creating your own collections is easy:

    #schema/timeable.rb
    module Schemata
      module Schema
        def timeable
          apply_schema :start_time, :datetime
          apply_schema :end_time , :datetime
        end
      end
    end

Then require the file in environment.rb or your rails engine. 

    require 'schema/timeable'

You can define as many methods within a file as you want and they'll be available. A quick an easy way to port your definitions would be to create a gem like schemata-timeables. 



## Contributing to schemata
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2011 Spencer Markowski. See LICENSE.txt for
further details.


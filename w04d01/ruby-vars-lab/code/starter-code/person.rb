class Person 

    def name
        # create a name variable
        name = "Steve"
    end 

    def age
        # create age variable here
        age = 21
    end

    def children
        # create children array here
        children = ["danny", "chris", "bartholemew", "gruntilda"]

    end

    def address

        # create address hash here
        address = {
            house_number: 6,
            street: "Squirrel Chase",
            town: "Lincoln",
            county: "Lincolnshire",
            postcode: "LN6 9UX",
            email_addresses: ["meme@vibes.com", "me@hotmail.com"]

        }
    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }
        password = "#{favourite_things[1]} #{birth_town}"

    end

end
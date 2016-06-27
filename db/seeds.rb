# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Example.create([
  { text: "Matt", user_id: 3  }
])


Match.create([
  { opponent: "Matt", user_id: 3  },
  { opponent: "John", user_id: 1  },
  { opponent: "Ruben", user_id: 2  },
  { opponent: "Josh", user_id: 4  },
  { opponent: "Roger", user_id: 4, date: "monday"  },
  { opponent: "Roger", user_id: 6, date: "tuesday"  }
])


Venue.create([
  { venue_location: "Center Court, Barrington, RI" },
  { venue_location: "Brown University Tennis Courts, East Side of Providence, RI" },
  { venue_location: "Hope High School Tennis Courts, Providence, RI" }
])

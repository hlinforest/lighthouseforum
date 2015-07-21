# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create!(
  title: "TSM at MSI",
  author: "Dyrus",
  text: <<-eos.gsub(/\s+/, " ").strip
    need a gank at top lane so i don't give first blood every single time so I can carry the game
  eos

)

Post.create!(
  title: "The fate of Cloud 9",
  author: "Diehard c9 fan",
  text: <<-eos.gsub(/\s+/, " ").strip
          C9 is the true heart and soul of the North American LCS, they have the dedication, determination,
          and the drive to bring NA back to its former glory. If they make it to the regional they have a shot at
          beating every team in the tournament and make it to worlds as the 3rd seed.
        eos

)

Post.create!(
  title: "Fnatic vs SKT rematch at worlds",
  author: "an EU fan",
  text: <<-eos.gsub(/\s+/, " ").strip
          Even though Fnatic lost to SKT in game 5 at MSI, this is the furthest an EU team has been in attempting to take down the No1 south korean team and for that I am proud as an EU fan.
        eos

)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
user1 = User.create ({
  username: 'invisibleman',
  password: 'teddywinters',
  first_name: 'Ivan',
  last_name: 'Bliminse'
})

Post.destroy_all

posts = Post.create([
  {
    title: "TOKYO!",
    description: "We loved it so much we had to come back."
  },
  {
    title: "Sakura Season",
    description: "This year we went during Sakura Season, meaning it was prime time for cherry blossoms. While the trees and colours in Kyoto hade yet to reach full bloom, Tokyo was in its finest dress during our visit.

So expect a lot of the white and cerise in this one."
  }
])
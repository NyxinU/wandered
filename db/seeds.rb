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
    title: "Japan",
    description: "tokyo"
  },
  {
    title: "New York",
    description: "city that never sleeps"
  }
])